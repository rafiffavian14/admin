<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="">
    <meta name="description" content="">

    <title>Layanan Administrasi SIASN BKN</title>
    
    <!-- Loading Bootstrap -->
    <link href="{{ asset('admin-master/css/bootstrap.css')}}" rel="stylesheet">

    <!-- Loading Template CSS -->
    <link href="{{ asset('admin-master/css/style.css')}}" rel="stylesheet">
    <link href="{{ asset('admin-master/css/animate.css')}}" rel="stylesheet">
    <link href="{{ asset('admin-master/css/style-magnific-popup.css')}}" rel="stylesheet">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:500,600,700" rel="stylesheet">

    <!-- Awsome Fonts -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="{{ asset('admin-master/css/pe-icon-7-stroke.css')}}">

	<!-- Optional - Adds useful class to manipulate icon font display -->
	<link rel="stylesheet" href="{{ asset('admin-master/css/helper.css')}}">

	<link rel="stylesheet" href="{{ asset('admin-master/css/owl.carousel.min.css')}}">
	<link rel="stylesheet" href="{{ asset('admin-master/css/owl.theme.default.min.css')}}">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
	
    <!-- Font Favicon -->
    <!-- <link rel="shortcut icon" href="{{ asset('admin-master/images/SIASN-BKN.png')}}"> -->
    
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
    
    <!--headerIncludes-->
    
</head>

<body>

  

    <!--begin home section -->
    
	 <!-- Fixed navbar -->
      <nav class="navbar navbar-default">
          <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#"><img style="width: 100px; margin-bottom: 150px;" src="{{asset('assets/img/logo-siasn.png')}}"></a>
              <a style="color: #00997a; font-family: 'Poppins', sans-serif; font-size: 30px; margin-top: 8px" class="navbar-nav" href="{{ route('index') }}">SI ASN BKN</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              
              
              <ul class="nav navbar-nav navbar-right">
                
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{{ Auth::user()->name }}</a>
                </li>
              </ul>
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
      </nav>
    <!--end home section -->

    <!--begin section-grey -->
    <section class="section-grey small-padding-top" id="about">

		<!--begin container -->
		<div class="container">

	        <!--begin row -->
	        <div class="row">

				<!--begin col-md-12 -->
				<div class="col-md-12 text-center">

					<h2 class="section-title">LAYANAN ADMINISTRASI SIASN</h2>

                    <p class="section-subtitle"></p>
                    
                </div>
                <!--end col-md-12 -->

                <!--begin col-md-4 -->
                <div class="col-md-4">

                    <div class="main-services">
						<a href="http://siasn-instansi.bkn.go.id/">
                        <img src="{{ asset('admin-master/images/UM.png')}}" class="width-100" alt="pic">

                        <h3>USER MANAGEMENT</h3>

                        <p></p>
                        </a>
                    </div>

                </div>
                <!--end col-md-4 -->

                <!--begin col-md-4 -->
                <div class="col-md-4">

                    <div class="main-services">
						<a href="{{ route('layanan.index') }}">
                        <img src="{{ asset('admin-master/images/ml.png')}}" class="width-100" alt="pic">

                        <h3>MANAJEMEN LAYANAN</h3>

                        <p></p>
                        </a>
                    </div>

                </div>
                <!--end col-md-4 -->

                <!--begin col-md-4 -->
                <div class="col-md-4">

                    <div class="main-services">
						<a href="{{ route('tte.index') }}">
                        <img src="{{ asset('admin-master/images/DS.png')}}" class="width-100" alt="pic">

                        <h3>MANAJEMEN TTE</h3>

                        <p></p>
                        </a>
                    </div>

                </div>
                <!--end col-md-4 -->
           
            </div>
            <!--end row -->
            
        </div>
        <!--end container -->

        <!--begin container -->
        <div class="container">


                <!--begin col-md-4 -->
                <div class="col-md-4">

                    <div class="main-services">
						<a href="{{ route('template.index') }}">
                        <img src="{{ asset('admin-master/images/dm.png')}}" class="width-100" alt="pic">

                        <h3>MANAJEMEN SK</h3>

                        <p></p>
                        </a>
                    </div>

                </div>
                <!--end col-md-4 -->

                <!--begin col-md-4 -->
                <div class="col-md-4">

                    <div class="main-services">
						<a href="http://dashboard-kebijakan-siasn.bkn.go.id/">
                        <img src="{{ asset('admin-master/images/MR.png')}}" class="width-100" alt="pic">

                        <h3>METADATA REPOSITORY</h3>

                        <p></p>
                        </a>
                    </div>

                </div>
                <!--end col-md-4 -->

                <!--begin col-md-4 -->
                <div class="col-md-4">

                    <div class="main-services">
						<a href="http://directory-siasn.bkn.go.id/">
                        <img src="{{ asset('admin-master/images/SD.png')}}" class="width-100" alt="pic">

                        <h3>SERVICE REPOSITORY</h3>

                        <p></p>
                        </a>
                    </div>

                </div>
                <!--end col-md-4 -->
            
        </div>
        <!--end container -->

    </section>
    <!--end section-grey -->

        
    <!--begin footer -->
    <div class="footer">
            
        <!--begin container -->
        <div class="container">
        
            <!--begin row -->
            <div class="row">
            
                <!--begin col-md-12 -->
                <div class="col-md-12 text-center">
                   
                    <p>Copyright © 2020 Badan Kepegawaian Negara</p>
                                         
                    <!--begin footer_social -->
                    
                    <!--end footer_social -->
                    
                </div>
                <!--end col-md-6 -->
                
            </div>
            <!--end row -->
            
        </div>
        <!--end container -->
                
    </div>
    <!--end footer -->


<!-- Load JS here for greater good =============================-->
<script src="{{ asset('admin-master/js/jquery-1.11.3.min.js')}}"></script>
<script src="{{ asset('admin-master/js/bootstrap.js')}}"></script>
<script src="{{ asset('admin-master/js/owl.carousel.min.js')}}"></script>
<script src="{{ asset('admin-master/js/jquery.scrollTo-min.js')}}"></script>
<script src="{{ asset('admin-master/js/jquery.magnific-popup.min.js')}}"></script>
<script src="{{ asset('admin-master/js/jquery.nav.js')}}"></script>
<script src="{{ asset('admin-master/js/wow.js')}}"></script>
<script src="{{ asset('admin-master/js/plugins.js')}}"></script>
<script src="{{ asset('admin-master/js/custom.js')}}"></script>


</body>
</html>