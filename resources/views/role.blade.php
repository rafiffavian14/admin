@extends('layouts.master')

@section('content')

<div class="container" style="margin-top: 50px;">

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4>Role
                        <br>
                        <a onclick="addForm()" class="btn btn-primary pull-right" style="margin-top: -8px;">Add Role</a>
                    </h4>
                </div>
                <div class="panel-body">
                    <table id="role-table" class="table table-striped">
                        <thead>
                            <tr>
                                <th width="30">No</th>
                                <th>Role Name</th>
                                <th>Description</th>
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
var table = $('#role-table').DataTable({
    processing: true,
    serverSide: true,
    ajax: "{{ route('api.tte') }}",
    columns: [{
            data: 'DT_RowIndex',
            name: 'id'
        },
        {
            data: 'posisi',
            name: 'posisi'
        },
        {
            data: 'spesimen',
            name: 'spesimen'
        },
        {
            data: 'action',
            name: 'action',
            orderable: false,
            searchable: false
        }
    ]
});


function addForm() {
    save_method = "add";
    $('input[name=_method]').val('POST');
    $('#modal-form-role').modal('show');
    $('#modal-form-tte form')[0].reset();
    $('.modal-title').text('Add Role');
}



$(function() {
    $('#modal-form-role form').validator().on('submit', function(e) {
        if (!e.isDefaultPrevented()) {
            var id = $('#id').val();
            if (save_method == 'add') url = "{{ url('manajemen-tte/store') }}";
            else url = "{{ url('manajemen-tte') . '/' }}" + id;

            $.ajax({
                url: url,
                type: 'POST',
                // data: $('#modal-form-role form').serialize(),
                data: new FormData($('#modal-form-role form')[0]),
                contentType: false,
                processData: false,
                success: function($data) {
                    $('#modal-form-role').modal('hide');
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
    $('#modal-form-role form')[0].reset();
    $.ajax({
        url: "{{ url('manajemen-tte') }}" + '/' + id + "/edit",
        type: "GET",
        dataType: "JSON",
        success: function(data) {
            $('#modal-form-role-edit').modal('show');
            $('.modal-title').text('Edit Data');

            $('#id').val(data.id);
            $('#posisi').val(data.posisi);
            $('#spesimen').val(data.spesimen);
        },

        error: function() {
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
    }).then(function() {

        $.ajax({
            url: "{{ url('role') }}" + '/' + id,
            type: "POST",
            data: {
                '_method': 'DELETE',
                '_token': csrf_token
            },
            success: function(data) {
                table.ajax.reload();
                swal({
                    title: 'Success',
                    text: 'Data has been deleted!',
                    type: 'success',
                    timer: '1500'
                })
                // console.log(data);
            },
            error: function() {
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