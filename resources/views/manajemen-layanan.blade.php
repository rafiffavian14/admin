@extends('layouts.master') 

@section('content')       

        <div class="container" style="margin-top: 10px;">

          <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4>Manajemen Layanan Table
                          <br>
                            <a onclick="addForm()" class="btn btn-primary pull-right" style="margin-top: -8px;">Add Data</a>
                        </h4>
                    </div>
                    <div class="panel-body">
                        <table id="layanan-table" class="table table-striped">
                            <thead>
                                <tr>
                                    <th width="30">No</th>
                                    <th>Daftar Layanan</th>
                                    <th>Prosedur</th>
                                    <th>Gambar</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>
                </div>
            </div>
          </div>
        </div> <!-- /container -->

@endsection

@push('after-script')
  <script type="text/javascript">
    
      var table =   $('#layanan-table').DataTable({
                        processing: true,
                        serverSide: true,
                        ajax: "{{ route('api.layanan') }}",
                        columns: [
                            {data: 'DT_RowIndex', name: 'id'},
                            {data: 'daftar_layanan', name: 'daftar_layanan'},
                            {data: 'prosedur', name: 'prosedur'},
                            {data: 'show_gambar', name: 'show_gambar'},
                            {data: 'action', name: 'action', orderable: false, searchable: false}
                        ]
          });


      function addForm() {
            save_method = "add";
            $('input[name=_method]').val('POST');
            $('#action').val("Add");
            $('#modal-form').modal('show');
            $('#modal-form form')[0].reset();
            $('#modal-form #form_result').empty();
            $('#modal-form #store_image').empty();
            $('.modal-title').text('Add Manajemen Layanan');
          }



         $('#modal-form form').on('submit', function(event) {
                event.preventDefault();
                if($('#action').val() == 'Add')
                {
                  $.ajax({
                    url:"{{ route('layanan.store') }}",
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
                          $('#modal-form form')[0].reset();
                          $('#layanan-table').DataTable().ajax.reload();
                        }
                        $('#form_result').html(html);
                    }
                  });
                }

                if($('#action').val() == "Edit")
                {
                  $.ajax({
                    url: "{{ route('layanan.update') }}",
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
                          $('#modal-form form')[0].reset();
                          $('#store_image').html('');
                          $('#layanan-table').DataTable().ajax.reload();
                        }
                        $('#form_result').html(html);
                    }
                  });
                }

                
    });

        $(document).on('click', '.edit', function() {
            var id = $(this).attr('id');
            $('#form_result').html('');
            $('#modal-form #store_image').empty();
            $('#modal-form form')[0].reset();
            $.ajax({
              url: "{{ url('manajemen-layanan') }}" + '/' + id + "/edit",
              dataType: "JSON",
              success: function (html) {
                  $('#modal-form').modal('show');
                  $('.modal-title').text('Edit Data');
                  $('#hidden_id').val(html.id);
                  $('#daftar_layanan').val(html.daftar_layanan);
                  $('#prosedur').val(html.prosedur);
                  $('#store_image').html("<img src={{ URL::to('/') }}/upload/photo/" + html.photo + " width='70' class='img-thumbnail' />");
                  $('#store_image').append("<input type='hidden' name='hidden_image' value='"+html.photo+"' />");
                  $('#action').val("Edit");
              },

              error : function () {
                alert("Nothing Data");
              }

            });
        });

         function showForm(id) {
            save_method = 'show';
            
            $('input[name=_method]').val('PATCH');
            $('#modal-form-detail form')[0].reset();
            $.ajax({
              url: "{{ url('manajemen-layanan') }}" + '/' + id + "/show",
              type: "GET",
              dataType: "JSON",
              success: function (data) {
                  $('#modal-form-detail').modal('show');
                  $('.modal-title').text('Show Data');

                  $('#modal-form-detail form #id').val(data.id).attr('disabled', 'true');
                  $('#modal-form-detail form #daftar_layanan').val(data.daftar_layanan).attr('disabled', 'true');
                  $('#modal-form-detail form #prosedur').val(data.prosedur).attr('disabled', 'true');
                  $('#modal-form-detail form #photo').html("<img src={{ URL::to('/') }}/upload/photo/" + data.photo + " width='70' class='img-thumbnail' />");
                  

                  
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
                url: "{{ url('manajemen-layanan') }}" + '/' + id,
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