@extends('layouts.master')

@section('content')

<div class="container" style="margin-top: 50px;">

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4>Role Mapping User
                    </h4>
                </div>
                <div class="panel-body">
                    <table id="tte-table" class="table table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Username</th>
                                <th>email</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Action</th>
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
var table = $('#tte-table').DataTable({
    processing: true,
    serverSide: true,
    ajax: "{{ route('api.tte') }}",
    columns: [{
            data: 'nip',
            name: 'id'
        },
        {
            data: 'nik',
            name: 'username'
        },
        {
            data: 'nama',
            name: 'email'
        },
        {
            data: 'posisi',
            name: 'first_name'
        },
        {
            data: 'spesimen',
            name: 'last_name'
        },
        {
            data: 'action',
            name: 'action',
            orderable: false,
            searchable: false
        }
    ]
});




$(function() {
    $('#modal-form-mapping form').validator().on('submit', function(e) {
        if (!e.isDefaultPrevented()) {
            var id = $('#id').val();
            if (save_method == 'add') url = "{{ url('role-mapping/store') }}";
            else url = "{{ url('role-mapping') . '/' }}" + id;

            $.ajax({
                url: url,
                type: 'POST',
                // data: $('#modal-form-tte form').serialize(),
                data: new FormData($('#modal-form-mapping form')[0]),
                contentType: false,
                processData: false,
                success: function($data) {
                    $('#modal-form-mapping').modal('hide');
                    table.ajax.reload();
                    swal({
                        title: 'Success!',
                        text: 'Data has been Created!',
                        type: 'success',
                        timer: '1500'
                    })
                },
                error: function() {
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
    $('#modal-form-mapping form')[0].reset();
    $.ajax({
        url: "{{ url('role-mapping') }}" + '/' + id + "/edit",
        type: "GET",
        dataType: "JSON",
        success: function(data) {
            $('#modal-form-mapping-edit').modal('show');
            $('.modal-title').text('Edit Data');

            $('#id').val(data.nip);
            $('#username').val(data.nik);
            $('#email').val(data.nama);
            $('#first_name').val(data.posisi);
            $('#last_name').val(data.spesimen);
        },

        error: function() {
            alert("Nothing Data");
        }

    });
}
</script>
@endpush

</body>

</html>