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


      function addForm() {
            save_method = "add";
            $('input[name=_method]').val('POST');
            $('#modal-form-tte').modal('show');
            $('#modal-form-tte form')[0].reset();
            $('.modal-title').text('Add Manajemen TTE');
          }



          $(function(){
            $('#modal-form-tte form').validator().on('submit', function(e) {
              if(!e.isDefaultPrevented()){
                var id = $('#id').val();
                if (save_method == 'add') url = "{{ url('manajemen-tte/store') }}";
                else url = "{{ url('contact') . '/' }}" + id;

                $.ajax({
                  url : url,
                  type: 'POST',
                  // data: $('#modal-form-tte form').serialize(),
                  data : new FormData($('#modal-form-tte form')[0]),
                  contentType: false,
                  processData: false,
                  success: function ($data) {
                    $('#modal-form-tte').modal('hide');
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

</body>
</html>



  



