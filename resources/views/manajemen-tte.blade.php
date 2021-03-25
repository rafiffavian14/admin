@extends('layouts.master') 

@section('content')       
    
    <div class="container" style="margin-top: 50px;">

      <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4>Manajemen TTE
                      <br>
                        <a onclick="addForm()" class="btn btn-primary pull-right" style="margin-top: -8px;">Add Data</a>
                    </h4>
                </div>
                <div class="panel-body">
                    <table id="tte-table" class="table table-striped">
                        <thead>
                            <tr>
                                <th width="30">No</th>
                                <th>Posisi</th>
                                <th>Spesimen</th>
                                <th>NIK</th>
                                <th>Nama</th>
                                <th>NIP</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>
                </div>
            </div>
        </div>
      </div>

      @include('form')
      

    </div> <!-- /container -->
    
@endsection
    

@push('after-script')

  <script type="text/javascript">
      
      var table =   $('#tte-table').DataTable({
                        processing: true,
                        serverSide: true,
                        ajax: "{{ route('api.tte') }}",
                        columns: [
                            {data: 'DT_RowIndex', name: 'id'},
                            {data: 'posisi', name: 'posisi'},
                            {data: 'spesimen', name: 'spesimen'},
                            {data: 'nik', name: 'nik'},
                            {data: 'nama', name: 'nama'},
                            {data: 'nip', name: 'nip'},
                            {data: 'action', name: 'action', orderable: false, searchable: false}
                        ]
          });
  </script>


  <script type="text/javascript">
      
     
          
            function editForm(id) {
            
            var id = id;
            
            // $('input[name=_method]').val('PATCH');
            $('#modal-form-tte-edit form')[0].reset();
            $.ajax({
              url: "{{ url('manajemen-tte') }}" + '/' + id + "/edit",
              type: "GET",
              dataType: "JSON",
              success: function (data) {
                  $('#modal-form-tte-edit').modal('show');
                  $('.modal-title').text('Edit Data');

                  $('#modal-form-tte-edit form #id').val(data.id);
                  $('#modal-form-tte-edit form #posisi').val(data.posisi);
                  $('#modal-form-tte-edit form #spesimen').val(data.spesimen);
                  $('#modal-form-tte-edit form #nik').val(data.nik);
                  $('#modal-form-tte-edit form #nama').val(data.nama);
                  $('#modal-form-tte-edit form #nip').val(data.nip);

                if(data.paraf_pi == 1){

                  $('#modal-form-tte-edit form #paraf_pi').prop('checked', true).val(data.paraf_pi);
                }  else {

                  $('#modal-form-tte-edit form #paraf_pi').prop('checked', false).val(data.paraf_pi);
                }

                if(data.paraf_kp == 1){

                  $('#modal-form-tte-edit form #paraf_kp').prop('checked', true).val(data.paraf_kp);
                }  else {

                  $('#modal-form-tte-edit form #paraf_kp').prop('checked', false).val(data.paraf_kp);
                }

                if(data.paraf_peremajaan == 1){

                  $('#modal-form-tte-edit form #paraf_peremajaan').prop('checked', true).val(data.paraf_peremajaan);
                }  else {

                  $('#modal-form-tte-edit form #paraf_peremajaan').prop('checked', false).val(data.paraf_peremajaan);
                }

                if(data.ttd_pi == 1){

                  $('#modal-form-tte-edit form #ttd_pi').prop('checked', true).val(data.ttd_pi);
                }  else {

                  $('#modal-form-tte-edit form #ttd_pi').prop('checked', false).val(data.ttd_pi);
                }

                if(data.ttd_kp == 1){

                  $('#modal-form-tte-edit form #ttd_kp').prop('checked', true).val(data.ttd_kp);
                }  else {

                  $('#modal-form-tte-edit form #ttd_kp').prop('checked', false).val(data.ttd_kp);
                }

                if(data.ttd_peremajaan == 1){

                  $('#modal-form-tte-edit form #ttd_peremajaan').prop('checked', true).val(data.ttd_peremajaan);
                }  else {

                  $('#modal-form-tte-edit form #ttd_peremajaan').prop('checked', false).val(data.ttd_peremajaan);
                }



              },

              error : function () {
                alert("Nothing Data");
              }

            });
        } 
     
      
      

          $('#modal-form-tte-edit form').on('submit', function(e) {
              
              e.preventDefault();

              var id = $('#modal-form-tte-edit form #id').val();

              $.ajax({

                  type : "PATCH",
                  url  : "{{ url('manajemen-tte/2/update') }}",
                  data : $('#modal-form-tte-edit form').serialize(),
                  success : function ($data) {
                      console.log($data);
                      $('#modal-form-tte-edit').modal('hide');
                      alert("Data Updated");
                      location.reload();
                  },
                  error: function (error) {
                    console.log(error);
                  } 

              });
          });
      
   

  </script>

  <script type="text/javascript">
    
    
        function addForm() {

            save_method = "add";
            $('#modal-form-tte').modal('show');
            $('#form-tte')[0].reset();
            $('.modal-title').text('Add Manajemen TTE');
          }

    

  </script>

  <script type="text/javascript">
    
      $(document).ready(function(){
          
          $('#form-tte').on('submit', function(e){
              e.preventDefault();

              $.ajax({

                  type: "POST",
                  url: "{{route('tte.store')}}",
                  data: $('#form-tte').serialize(),
                  success: function (response) {
                      console.log(response)
                      $('#modal-form-tte').modal('hide')
                      table.ajax.reload();
                      swal({
                        title: 'Success!',
                        text: 'Data has been Created!',
                        type: 'success',
                        timer: '1500'
                      })
                  },

                  error: function (error) {
                      // console.log(error)
                      // alert("Data Not Saved");
                      swal({
                        title: 'Oops...',
                        text: 'Something Went Wrong!',
                        type: 'error',
                        timer: '1500'
                    })
                  }

              });
          });
      });

  </script>

  <script type="text/javascript">
      
      
        function showForm(id) {
            
            var id = id;
            
            // $('input[name=_method]').val('PATCH');
            $('#modal-form-tte-show form')[0].reset();
            $.ajax({
              url: "{{ url('manajemen-tte') }}" + '/' + id + "/show",
              type: "GET",
              dataType: "JSON",
              success: function (data) {
                  $('#modal-form-tte-show').modal('show');
                  $('.modal-title').text('Show Data');

                  $('#modal-form-tte-show form #id').val(data.id).attr('disabled', 'true');
                  $('#modal-form-tte-show form #posisi').val(data.posisi).attr('disabled', 'true');
                  $('#modal-form-tte-show form #spesimen').val(data.spesimen).attr('disabled', 'true');
                  $('#modal-form-tte-show form #nik').val(data.nik).attr('disabled', 'true');
                  $('#modal-form-tte-show form #nama').val(data.nama).attr('disabled', 'true');
                  $('#modal-form-tte-show form #nip').val(data.nip).attr('disabled', 'true');

                if(data.paraf_pi == 1){

                  $('#modal-form-tte-show form #paraf_pi').prop('checked', true).val(data.paraf_pi).attr('disabled', 'true');
                }  else {

                  $('#modal-form-tte-show form #paraf_pi').prop('checked', false).val(data.paraf_pi).attr('disabled', 'true');
                }

                if(data.paraf_kp == 1){

                  $('#modal-form-tte-show form #paraf_kp').prop('checked', true).val(data.paraf_kp).attr('disabled', 'true');
                }  else {

                  $('#modal-form-tte-show form #paraf_kp').prop('checked', false).val(data.paraf_kp).attr('disabled', 'true');
                }

                if(data.paraf_peremajaan == 1){

                  $('#modal-form-tte-show form #paraf_peremajaan').prop('checked', true).val(data.paraf_peremajaan).attr('disabled', 'true');
                }  else {

                  $('#modal-form-tte-show form #paraf_peremajaan').prop('checked', false).val(data.paraf_peremajaan).attr('disabled', 'true');
                }

                if(data.ttd_pi == 1){

                  $('#modal-form-tte-show form #ttd_pi').prop('checked', true).val(data.ttd_pi).attr('disabled', 'true');
                }  else {

                  $('#modal-form-tte-show form #ttd_pi').prop('checked', false).val(data.ttd_pi).attr('disabled', 'true');
                }

                if(data.ttd_kp == 1){

                  $('#modal-form-tte-show form #ttd_kp').prop('checked', true).val(data.ttd_kp).attr('disabled', 'true');
                }  else {

                  $('#modal-form-tte-show form #ttd_kp').prop('checked', false).val(data.ttd_kp).attr('disabled', 'true');
                }

                if(data.ttd_peremajaan == 1){

                  $('#modal-form-tte-show form #ttd_peremajaan').prop('checked', true).val(data.ttd_peremajaan).attr('disabled', 'true');
                }  else {

                  $('#modal-form-tte-show form #ttd_peremajaan').prop('checked', false).val(data.ttd_peremajaan).attr('disabled', 'true');
                }



              },

              error : function () {
                alert("Nothing Data");
              }

            });
        } 


        function deleteData(id) {
          
          var csrf_token = $('meta[name="csrf-token"]').attr('content');
          swal({
            title: 'Are You Sure?',
            text: "You Wont be able to Revert this!",
            type: 'warning',
            showCancelButton: true,
            cancelButtonColor: '#d33',
            confirmButtonColor: '#3085d6',
            confirmButtonText: 'Yes, delete it!'
          }).then( function () {

              $.ajax({
                url: "{{ url('manajemen-tte') }}" + '/' + id,
                type: "POST",
                data: {'_method': 'DELETE', '_token' : csrf_token},
                success: function (data) {
                  table.ajax.reload();
                  swal({
                      title: 'Success',
                      text: 'Data has been deleted!',
                      type: 'success',
                      timer: '1500'
                  })
                  // console.log(data);
                },
                error: function () {
                  swal({
                    title: 'Oops...',
                    text: 'Something went wrong!',
                    type: 'error',
                    timer: '1500'
                  });
                }
              });

          });
         
          
        }
     
      

  </script>
@endpush  

</body>
</html>



  



