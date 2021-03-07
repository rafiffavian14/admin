@extends('layouts.master') 

@section('content')       

        <div class="container" style="margin-top: 10px;">

          <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4>Manajemen Template SK
                          <br>
                            <a onclick="addForm()" class="btn btn-primary pull-right" style="margin-top: -8px;">Add Data</a>
                        </h4>
                    </div>
                    <div class="panel-body">
                        <table id="template-table" class="table table-striped">
                            <thead>
                                <tr>
                                    <th width="30">No</th>
                                    <th>Jenis Instansi</th>
                                    <th>Jenis SK</th>
                                    <th>File</th>
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
      
      var table =   $('#template-table').DataTable({
                        processing: true,
                        serverSide: true,
                        ajax: "{{ route('api.template') }}",
                        columns: [
                            {data: 'DT_RowIndex', name: 'id'},
                            {data: 'tipe_instansi.name', name: 'id_instansi', searchable: true},
                            {data: 'tipe_jenissk.name', name: 'id_jenis_sk', searchable: true},
                            {data: 'show_file', name: 'show_file'},
                            {data: 'action', name: 'action', orderable: false, searchable: false}
                        ]
          });


      function addForm() {
            save_method = "add";
            $('input[name=_method]').val('POST');
            $('#modal-form-template').modal('show');
            $('#modal-form-template form')[0].reset();
            $('.modal-title').text('Add Manajemen Template');
            
          }



          $(function(){
            $('#modal-form-template form').validator().on('submit', function(e) {
              if(!e.isDefaultPrevented()){
                var id = $('#id').val();
                if (save_method == 'add') url = "{{ url('manajemen-template/store') }}";

                $.ajax({
                  url : url,
                  type: 'POST',
                  // data: $('#modal-form-template form').serialize(),
                  data : new FormData($('#modal-form-template form')[0]),
                  contentType: false,
                  processData: false,
                  success: function ($data) {
                    $('#modal-form-template').modal('hide');
                    table.ajax.reload();
                    swal({
                      title: 'Success!',
                      text: 'Data has been Created!',
                      type: 'success',
                      timer: '1500'
                    })
                  },
                  error: function () {
                    swal({
                        title: 'Oops...',
                        text: 'Something Went Wrong!',
                        type: 'error',
                        timer: '1500'
                    })
                  }
                });

                return false;
              }
            });

          });

           function editForm(id) {
            save_method = "edit";
            id = id;
            
            $('input[name=_method]').val('PATCH');
            $('#modal-form-template-edit form')[0].reset();
            $.ajax({
              url: "{{ url('manajemen-template') }}" + '/' + id + "/edit",
              type: "GET",
              data: id,
              dataType: "JSON",
              success: function (data) {
                  $('#modal-form-template-edit').modal('show');
                  $('.modal-title').text('Edit Data');

                  $('#id').val(data.id);

                  $('#id-instansi').val(data.tipe_instansi.id).text(data.tipe_instansi.name);
                  $('#id-jenis-sk').val(data.tipe_jenissk.id).text(data.tipe_jenissk.name);

              },

              error : function () {
                alert("Nothing Data");
              }

            });
        }

        $(function(){
            $('#modal-form-template-edit form').validator().on('submit', function(e) {
              if(!e.isDefaultPrevented()){
                var id = $('#id').val();
                if (save_method == 'edit') url = "{{ url('manajemen-template') . '/' }}" + id;
                

                $.ajax({
                  url : url,
                  type: 'POST',
                  // data: $('#modal-form-template-edit form').serialize(),
                  data : new FormData($('#modal-form-template-edit form')[0]),
                  contentType: false,
                  processData: false,
                  success: function ($data) {
                    $('#modal-form-template-edit').modal('hide');
                    table.ajax.reload();
                    swal({
                      title: 'Success!',
                      text: 'Data has been Created!',
                      type: 'success',
                      timer: '1500'
                    })
                  },
                  error: function () {
                    swal({
                        title: 'Oops...',
                        text: 'Something Went Wrong!',
                        type: 'error',
                        timer: '1500'
                    })
                  }
                });

                return false;
              }
            });

          });

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
                url: "{{ url('manajemen-template') }}" + '/' + id,
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

         function showForm(id) {
            save_method = 'show';
            
            $('input[name=_method]').val('PATCH');
            $('#modal-form-template-show form')[0].reset();
            
            
            $.ajax({
              url: "{{ url('manajemen-template') }}" + '/' + id + "/show",
              type: "GET",
              dataType: "JSON",
              success: function (data) {
                  $('#modal-form-template-show').modal('show');
                  $('.modal-title').text('Show Data');

                  $('#modal-form-template-show form #id').val(data.id).attr('disabled', 'true');
                  $('#modal-form-template-show form #id-instansi').val(data.tipe_instansi.name).attr('disabled', 'true');
                  $('#modal-form-template-show form #id-jenis-sk').val(data.tipe_jenissk.name).attr('disabled', 'true');
                  $('#modal-form-template-show form div #file a').attr('href', 'upload/documents/'+ data.file).text(data.file);
                  // $('#modal-form-template-show form div #file').prepend('<a id="file-data" target="_blank" href="' + 'upload/documents/'+ data.file + '">'+ data.file +'</a>');
                  
              },

              error : function () {
                alert("Nothing Data");
              }

            });
        }

  </script>

@endpush



  



