pipeline {
    parameters {
        string(name: 'PRODUCTION_NAMESPACE',       description: 'Production Namespace',                 defaultValue: 'siasn')

        string(name: 'DEVELOPMENT_NAMESPACE',      description: 'Development Namespace',                defaultValue: 'siasn-training')

        string(name: 'DOCKER_IMAGE_NAME',          description: 'Docker Image Name',                    defaultValue: 'admin-siasn')
    }
	
    agent any
       triggers {
           pollSCM(env.BRANCH_NAME == 'master' ? '* * * * *' : '* * * * *')
    }

    
    
    stages {

        stage('Checkout SCM') {
            steps {
                
                script{
                    sh 'rm -Rf *'
                }
                checkout scm
                script {
                    echo "get COMMIT_ID"
                    sh 'echo -n $(git rev-parse --short HEAD) > ./commit-id'
                    commitId = readFile('./commit-id')
                }
                stash(name: 'ws', includes:'**,./commit-id') // stash this current 
            }
        }

        stage('Initialize') {
            steps {
                script{
                            if ( env.BRANCH_NAME == 'master' ){
				    projectKubernetes= "${params.PRODUCTION_NAMESPACE}"
                                envStage = "production"
                            }else if ( env.BRANCH_NAME == 'development'){
				projectKubernetes= "${params.DEVELOPMENT_NAMESPACE}"
                                envStage = "development"
                    }
                    echo "${projectKubernetes}"
                    
                } 
                
            }
        }


        stage('SonarQube') {
            steps {
                sh 'echo "Hello World"'
                sh '''
                    echo "Multiline shell steps works too"
                    ls -lah
                '''
                script{
                    
                    
                    def scannerHome = tool 'sonarqube4.5' ;
                            withSonarQubeEnv('SonarQube') {
                                sh "${scannerHome}/bin/sonar-scanner"
                      }
                    
                }
                
                
            }
        }

        stage('Build Docker') {
            steps {
                
                script{
                
                    sh "composer install"
                    sh "chmod 775  -Rf vendor"
                    sh "chmod 777 -Rf storage/ && chmod 777 -Rf storage/logs"

                    sh "docker build --rm --no-cache --pull -t ${params.DOCKER_IMAGE_NAME}:${BUILD_NUMBER}-${commitId} ."
                    
                }
            }
        }

       stage('Deploy') {
            steps {
		    script{
                	   echo "Login Docker Registry"
		           withCredentials([usernamePassword(credentialsId: 'jenkins', usernameVariable: 'username', passwordVariable: 'password')]) {
		             
		             def login = sh ( script: 'curl -u ${username}:${password} "https://console-kubernetes.bkn.go.id/oauth/authorize?client_id=openshift-challenging-client&response_type=token" -skv -H "X-CSRF-Token: xxx" --stderr - |  grep -oP "access_token=[^&]*"',returnStdout: true).trim()
		             
		             
		               str = login.split('=');
		               token=str[1];

		             
        			sh "docker login docker-registry-default.apps-kubernetes.bkn.go.id -u jenkins -p ${token}"
				 
				 imagefinal = "docker-registry-default.apps-kubernetes.bkn.go.id/${projectKubernetes}/${params.DOCKER_IMAGE_NAME}"
				 sh "docker tag ${params.DOCKER_IMAGE_NAME}:${BUILD_NUMBER}-${commitId} ${imagefinal}:latest"
				 sh  "docker push  ${imagefinal}:latest"
				 
				 if ( env.BRANCH_NAME == 'master' ){
				      sh "docker tag ${params.DOCKER_IMAGE_NAME}:${BUILD_NUMBER}-${commitId} ${imagefinal}:prod-${BUILD_NUMBER}"
				      sh  "docker push ${imagefinal}:prod-${BUILD_NUMBER}"
                                 }
    			}
		    }
		    
            }
        }


    }


post {
        always{
          
          	 sh  "docker rmi -f  ${imagefinal}:latest"
          	 
          	            script{
                                if ( currentBuild.currentResult == 'SUCCESS' ) {
                                        textMessage = "\u2600 Jenkins  ${JOB_NAME}-${BUILD_NUMBER} SUCCESS"
                        
                                        withCredentials([string(credentialsId: 'token_telegram', variable: 'TELEGRAM_TOKEN')]) {
                                                                sh "curl -s -X POST 'https://api.telegram.org/${TELEGRAM_TOKEN}/sendMessage?chat_id=-340782909&text=${textMessage}&parse_mode=HTML'"
                                        }
                        
                               }
                          else if( currentBuild.currentResult == 'FAILURE' ) {
                            textMessage = "\u26c8 Jenkins ${JOB_NAME}-${BUILD_NUMBER} FAILED"  
            
                            withCredentials([string(credentialsId: 'token_telegram', variable: 'TELEGRAM_TOKEN')]) {
                                                    sh "curl -s -X POST 'https://api.telegram.org/${TELEGRAM_TOKEN}/sendMessage?chat_id=-340782909&text=${textMessage}&parse_mode=HTML'"
                              }
                    
                          }
                       }

          
        }
	
       }



}
