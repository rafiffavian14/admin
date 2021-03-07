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
                else url = "{{ url('manajemen-tte') . '/' }}" + id;

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

          function editForm(id) {
            save_method = 'edit';
            
            $('input[name=_method]').val('PATCH');
            $('#modal-form-tte form')[0].reset();
            $.ajax({
              url: "{{ url('manajemen-tte') }}" + '/' + id + "/edit",
              type: "GET",
              dataType: "JSON",
              success: function (data) {
                  $('#modal-form-tte').modal('show');
                  $('.modal-title').text('Edit Data');

                  $('#id').val(data.id);
                  $('#posisi').val(data.posisi);
                  $('#spesimen').val(data.spesimen);
                  $('#nik').val(data.nik);
                  $('#nama').val(data.nama);
                  $('#nip').val(data.nip);
              },

              error : function () {
                alert("Nothing Data");
              }

            });
        }

        function showForm(id) {
            save_method = 'show';
            
            $('input[name=_method]').val('PATCH');
            $('#modal-form-tte-detail form')[0].reset();
            $.ajax({
              url: "{{ url('manajemen-tte') }}" + '/' + id + "/show",
              type: "GET",
              dataType: "JSON",
              success: function (data) {
                  $('#modal-form-tte-detail').modal('show');
                  $('.modal-title').text('Show Data');

                  $('#modal-form-tte-detail form #id').val(data.id).attr('disabled', 'true');
                  $('#modal-form-tte-detail form #posisi').val(data.posisi).attr('disabled', 'true');
                  $('#modal-form-tte-detail form #spesimen').val(data.spesimen).attr('disabled', 'true');
                 $('#modal-form-tte-detail form #nik').val(data.nik).attr('disabled', 'true');
                 $('#modal-form-tte-detail form #nama').val(data.nama).attr('disabled', 'true');
                 $('#modal-form-tte-detail form #nip').val(data.nip).attr('disabled', 'true');
                  

                  
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



  



