@extends('layouts.master') 

@section('content')       

        <div class="container" style="margin-top: 10px;">

          <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4>Manajemen Pertek
                          <br>
                            <a onclick="addForm()" class="btn btn-primary pull-right" style="margin-top: -8px;">Add Data</a>
                        </h4>
                    </div>
                    <div class="panel-body">
                        <table id="pertek-table" class="table table-striped">
                            <thead>
                                <tr>
                                    <th width="30">No</th>
                                    <th>Jenis Pertek</th>
                                    <th>Deskripsi</th>
                                    <th>JRXML</th>
                                    <th>JSON</th>
                                    <th>Tanggal Versi</th>
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
      
      var table =   $('#pertek-table').DataTable({
                        processing: true,
                        serverSide: true,
                        ajax: "{{ route('api.pertek') }}",
                        columns: [
                            {data: 'DT_RowIndex', name: 'id'},
                            {data: 'tipe_pertek.name', name: 'id_jenis_pertek'},
                            {data: 'deskripsi', name: 'deskripsi'},
                            {data: 'show_jrxml', name: 'show_jrxml'},
                            {data: 'show_json', name: 'show_json'},
                            {data: 'tanggal_versi', name: 'tanggal_versi'},
                            {data: 'action', name: 'action', orderable: false, searchable: false}
                        ]
          });


      function addForm() {
            save_method = "add";
            $('input[name=_method]').val('POST');
            $('#modal-form-pertek').modal('show');
            $('#modal-form-pertek form')[0].reset();
            $('.modal-title').text('Add Manajemen Pertek');
          }



          $(function(){
            $('#modal-form-pertek form').validator().on('submit', function(e) {
              if(!e.isDefaultPrevented()){
                var id = $('#id').val();
                if (save_method == 'add') url = "{{ url('manajemen-pertek/store') }}";
                

                $.ajax({
                  url : url,
                  type: 'POST',
                  // data: $('#modal-form-template form').serialize(),
                  data : new FormData($('#modal-form-pertek form')[0]),
                  contentType: false,
                  processData: false,
                  success: function ($data) {
                    $('#modal-form-pertek').modal('hide');
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
            $('#modal-form-pertek-edit form')[0].reset();
            $.ajax({
              url: "{{ url('manajemen-pertek') }}" + '/' + id + "/edit",
              type: "GET",
              data: id,
              dataType: "JSON",
              success: function (data) {
                  $('#modal-form-pertek-edit').modal('show');
                  $('.modal-title').text('Edit Data');

                  $('#id').val(data.id);
                  $('#id-pertek').val(data.tipe_pertek.id).text(data.tipe_pertek.name);
                  $('textarea#deskripsi').val(data.deskripsi);
                  $('#tanggal_versi').val(data.tanggal_versi);
                  

              },

              error : function () {
                alert("Nothing Data");
              }

            });
        }

        $(function(){
            $('#modal-form-pertek-edit form').validator().on('submit', function(e) {
              if(!e.isDefaultPrevented()){
                var id = $('#id').val();
                if (save_method == 'edit') url = "{{ url('manajemen-pertek') . '/' }}" + id;
                

                $.ajax({
                  url : url,
                  type: 'POST',
                  // data: $('#modal-form-pertek-edit form').serialize(),
                  data : new FormData($('#modal-form-pertek-edit form')[0]),
                  contentType: false,
                  processData: false,
                  success: function ($data) {
                    $('#modal-form-pertek-edit').modal('hide');
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

  </script>

@endpush



  



