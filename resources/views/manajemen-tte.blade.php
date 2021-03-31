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
    
    
        function addForm() {

            $('#modal-form-tte #action').val("Add");
            $('#modal-form-tte').modal('show');
             $('#modal-form-tte form')[0].reset();
            $('#modal-form-tte #form_result').empty();
            $('.modal-title').text('Add Manajemen TTE');

          }

          $('#modal-form-tte form').on('submit', function(event) {
                event.preventDefault();
                if($('#action').val() == 'Add')
                {
                  $.ajax({
                    url:"{{ route('tte.store') }}",
                    method: "POST",
                    data: new FormData(this),
                    contentType: false,
                    cache: false,
                    processData: false,
                    dataType:"json",
                    success: function(data) {
                        var html = '';
                        if(data.errors)
                        {
                          html = '<div class="alert alert-danger">';
                          for(var count = 0; count < data.errors.length; count++)
                          {
                            html += '<p>' + data.errors[count] + '</p>';
                          }
                            html += '</div>';
                        }
                        if(data.success)
                        {
                          html = '<div class="alert alert-success">' + data.success + '</div>';
                          $('#modal-form-tte form')[0].reset();
                          $('#tte-table').DataTable().ajax.reload();
                        }
                        $('#modal-form-tte #form_result').html(html);
                    }
                  });
                } 

                if($('#action').val() == "Edit")
                {
                  $.ajax({
                    url: "{{ route('tte.update') }}",
                    method: "POST",
                    data: new FormData(this),
                    contentType: false,
                    cache: false,
                    processData: false,
                    dataType: "json",
                    success: function(data) {
                        var html= '';
                        if(data.errors)
                        {
                          html = '<div class="alert alert-danger">';
                          for(var count = 0; count < data.errors.length; count++)
                          {
                            html += '<p>' + data.errors[count] + '</p>';
                          }
                          html += '</div>';
                        }
                        if(data.success)
                        {
                          html = '<div class="alert alert-success">' + data.success + '</div>';
                          $('#modal-form-tte form')[0].reset();
                          $('#tte-table').DataTable().ajax.reload();
                        }
                        $('#modal-form-tte #form_result').html(html);
                    }
                  });
                }   
            });



          $(document).on('click', '.edit', function() {
            var id = $(this).attr('id');
            $('#modal-form-tte #form_result').html('');
            $('#modal-form-tte form')[0].reset();
            $.ajax({
              url: "{{ url('manajemen-tte') }}" + '/' + id + "/edit",
              dataType: "JSON",
              success: function (html) {
                  $('#modal-form-tte').modal('show');
                  $('.modal-title').text('Edit Data');
                  $('#modal-form-tte #action').val("Edit");
                  $('#modal-form-tte #hidden_id').val(html.id);
                  $('#modal-form-tte form #id').val(html.id);
                  $('#modal-form-tte form #posisi').val(html.posisi);
                  $('#modal-form-tte form #spesimen').val(html.spesimen);
                  $('#modal-form-tte form #nik').val(html.nik);
                  $('#modal-form-tte form #nama').val(html.nama);
                  $('#modal-form-tte form #nip').val(html.nip);

                if(html.paraf_pi == 1){

                  $('#modal-form-tte form #paraf_pi').prop('checked', true).val(html.paraf_pi);
                }  else {

                  $('#modal-form-tte form #paraf_pi').prop('checked', false).val(html.paraf_pi);
                }

                if(html.paraf_kp == 1){

                  $('#modal-form-tte form #paraf_kp').prop('checked', true).val(html.paraf_kp);
                }  else {

                  $('#modal-form-tte form #paraf_kp').prop('checked', false).val(html.paraf_kp);
                }

                if(html.paraf_peremajaan == 1){

                  $('#modal-form-tte form #paraf_peremajaan').prop('checked', true).val(html.paraf_peremajaan);
                }  else {

                  $('#modal-form-tte form #paraf_peremajaan').prop('checked', false).val(html.paraf_peremajaan);
                }

                if(html.ttd_pi == 1){

                  $('#modal-form-tte form #ttd_pi').prop('checked', true).val(html.ttd_pi);
                }  else {

                  $('#modal-form-tte form #ttd_pi').prop('checked', false).val(html.ttd_pi);
                }

                if(html.ttd_kp == 1){

                  $('#modal-form-tte form #ttd_kp').prop('checked', true).val(html.ttd_kp);
                }  else {

                  $('#modal-form-tte form #ttd_kp').prop('checked', false).val(html.ttd_kp);
                }

                if(html.ttd_peremajaan == 1){

                  $('#modal-form-tte form #ttd_peremajaan').prop('checked', true).val(html.ttd_peremajaan);
                }  else {

                  $('#modal-form-tte form #ttd_peremajaan').prop('checked', false).val(html.ttd_peremajaan);
                }
                  $('#action').val("Edit");
              },

              error : function () {
                alert("Nothing Data");
              }

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



  



