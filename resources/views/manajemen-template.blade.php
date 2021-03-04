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
                            {data: 'tipe_instansi.name', name: 'id_instansi'},
                            {data: 'tipe_jenissk.name', name: 'id_jenis_sk'},
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
                else url = "{{ url('contact') . '/' }}" + id;

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
  </script>

@endpush



  



