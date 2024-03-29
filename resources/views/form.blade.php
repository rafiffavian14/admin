<div class="modal" id="modal-form" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <span id="form_result"></span>
            <form id="form-contact" method="post" class="form-horizontal" data-toggle="validator"
                enctype="multipart/form-data">
                @csrf
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title"></h3>
                </div>

                <div class="modal-body">
                    <div class="form-group">
                        <label for="daftar_layanan" class="col-md-3 control-label">Daftar Layanan</label>
                        <div class="col-md-6">
                            <input type="text" id="daftar_layanan" name="daftar_layanan" class="form-control" autofocus
                                required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for=prosedur class="col-md-3 control-label">Prosedur</label>
                        <div class="col-md-6">
                            <input type="prosedur" id="prosedur" name="prosedur" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="photo" class="col-md-3 control-label">Photo</label>
                        <div class="col-md-6">
                            <input type="file" id="photo" name="photo" class="form-control">
                            <span id="store_image"></span>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <input type="hidden" name="action" id="action" />
                    <input type="hidden" name="hidden_id" id="hidden_id" />
                    <button type="submit" class="btn btn-primary btn-save">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                </div>

            </form>
        </div>
    </div>
</div>

<div class="modal" id="modal-form-tte" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <span id="form_result"></span>
            <form id="form-tte" method="post" class="form-horizontal" data-toggle="validator">
                @csrf
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title"></h3>
                </div>

               <div class="modal-body">
                    <input type="hidden" name="id" id="id">
                    <div class="form-group">
                        <label for="posisi" class="col-md-3 control-label">Posisi</label>
                        <div class="col-md-6">
                            <input type="text" id="posisi" name="posisi" class="form-control" autofocus required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                      <label for="spesimen" class="col-md-3 control-label">Spesimen</label>
                      <div class="col-md-6">
                          <input type="text" id="spesimen" name="spesimen" class="form-control" required>
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="nik" class="col-md-3 control-label">NIK</label>
                      <div class="col-md-6">
                          <input type="text" id="nik" name="nik" class="form-control" required>
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>                    

                    <div class="form-group">
                      <label for="nama" class="col-md-3 control-label">Nama</label>
                      <div class="col-md-6">
                          <input type="text" id="nama" name="nama" class="form-control" required>
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>                    

                    <div class="form-group">
                      <label for="nip" class="col-md-3 control-label">NIP</label>
                      <div class="col-md-6">
                          <input type="text" id="nip" name="nip" class="form-control" required>
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>                    

                    <div class="form-group">
                      <label for="nip" class="col-md-3 control-label">PARAF</label>
                      <div class="col-md-6">
                          <label class="checkbox-inline"><input name="paraf_pi" id="paraf_pi" type="checkbox" value="1">PI</label>
                          <label class="checkbox-inline"><input name="paraf_kp" id="paraf_kp" type="checkbox" value="1">KP</label>
                          <label class="checkbox-inline"><input name="paraf_peremajaan" id="paraf_peremajaan" type="checkbox" value="1">Peremajaan</label>

                      </div>
                    </div>  

                    <div class="form-group">
                      <label for="nip" class="col-md-3 control-label">TTD</label>
                      <div class="col-md-6">
                          <label class="checkbox-inline"><input name="ttd_pi" id="ttd_pi" type="checkbox" value="1">PI</label>
                          <label class="checkbox-inline"><input name="ttd_kp" id="ttd_kp" type="checkbox" value="1">KP</label>
                          <label class="checkbox-inline"><input name="ttd_peremajaan" id="ttd_peremajaan" type="checkbox" value="1">Peremajaan</label>

                      </div>
                    </div>                                      
                </div>

                <div class="modal-footer">
                    <input type="hidden" name="action" id="action" />
                    <input type="hidden" name="hidden_id" id="hidden_id" />
                    <button type="submit" class="btn btn-primary btn-save">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal" id="modal-form-tte-edit" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="form-tte-edit" class="form-horizontal" data-toggle="validator">
                {{ csrf_field() }}
                {{ method_field('PATCH') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title"></h3>
                </div>

                <div class="modal-body">
                    <input type="hidden" name="id" id="id">
                    <div class="form-group">
                        <label for="posisi" class="col-md-3 control-label">Posisi</label>
                        <div class="col-md-6">
                            <input type="text" id="posisi" name="posisi" class="form-control" autofocus required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                      <label for="spesimen" class="col-md-3 control-label">Spesimen</label>
                      <div class="col-md-6">
                          <input type="text" id="spesimen" name="spesimen" class="form-control" required>
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="nik" class="col-md-3 control-label">NIK</label>
                      <div class="col-md-6">
                          <input type="text" id="nik" name="nik" class="form-control" required>
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>                    

                    <div class="form-group">
                      <label for="nama" class="col-md-3 control-label">Nama</label>
                      <div class="col-md-6">
                          <input type="text" id="nama" name="nama" class="form-control" required>
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>                    

                    <div class="form-group">
                      <label for="nip" class="col-md-3 control-label">NIP</label>
                      <div class="col-md-6">
                          <input type="text" id="nip" name="nip" class="form-control" required>
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>                    

                    <div class="form-group">
                      <label for="nip" class="col-md-3 control-label">PARAF</label>
                      <div class="col-md-6">
                          <label class="checkbox-inline"><input name="paraf_pi" id="paraf_pi" type="checkbox" value="1">PI</label>
                          <label class="checkbox-inline"><input name="paraf_kp" id="paraf_kp" type="checkbox" value="1">KP</label>
                          <label class="checkbox-inline"><input name="paraf_peremajaan" id="paraf_peremajaan" type="checkbox" value="1">Peremajaan</label>

                      </div>
                    </div>  

                    <div class="form-group">
                      <label for="nip" class="col-md-3 control-label">TTD</label>
                      <div class="col-md-6">
                          <label class="checkbox-inline"><input name="ttd_pi" id="ttd_pi" type="checkbox" value="1">PI</label>
                          <label class="checkbox-inline"><input name="ttd_kp" id="ttd_kp" type="checkbox" value="1">KP</label>
                          <label class="checkbox-inline"><input name="ttd_peremajaan" id="ttd_peremajaan" type="checkbox" value="1">Peremajaan</label>

                      </div>
                    </div>                                      
                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-save">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                </div>

            </form>
        </div>
    </div>
</div>


<div class="modal" id="modal-form-tte-show" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="form-tte-show" class="form-horizontal" data-toggle="validator">
                {{ csrf_field() }}
                {{ method_field('PATCH') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title">Show Data</h3>
                </div>

               <div class="modal-body">
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        <label for="posisi" class="col-md-3 control-label">Posisi</label>
                        <div class="col-md-6">
                            <input type="text" id="posisi" name="posisi" class="form-control" autofocus required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                      <label for="spesimen" class="col-md-3 control-label">Spesimen</label>
                      <div class="col-md-6">
                          <input type="text" id="spesimen" name="spesimen" class="form-control" required>
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="nik" class="col-md-3 control-label">NIK</label>
                      <div class="col-md-6">
                          <input type="text" id="nik" name="nik" class="form-control" required>
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>                    

                    <div class="form-group">
                      <label for="nama" class="col-md-3 control-label">Nama</label>
                      <div class="col-md-6">
                          <input type="text" id="nama" name="nama" class="form-control" required>
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>                    

                    <div class="form-group">
                      <label for="nip" class="col-md-3 control-label">NIP</label>
                      <div class="col-md-6">
                          <input type="text" id="nip" name="nip" class="form-control" required>
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>                    

                    <div class="form-group">
                      <label for="nip" class="col-md-3 control-label">PARAF</label>
                      <div class="col-md-6">
                          <label class="checkbox-inline"><input name="paraf_pi" id="paraf_pi" type="checkbox" value="1">PI</label>
                          <label class="checkbox-inline"><input name="paraf_kp" id="paraf_kp" type="checkbox" value="1">KP</label>
                          <label class="checkbox-inline"><input name="paraf_peremajaan" id="paraf_peremajaan" type="checkbox" value="1">Peremajaan</label>

                      </div>
                    </div>  

                    <div class="form-group">
                      <label for="nip" class="col-md-3 control-label">TTD</label>
                      <div class="col-md-6">
                          <label class="checkbox-inline"><input name="ttd_pi" id="ttd_pi" type="checkbox" value="1">PI</label>
                          <label class="checkbox-inline"><input name="ttd_kp" id="ttd_kp" type="checkbox" value="1">KP</label>
                          <label class="checkbox-inline"><input name="ttd_peremajaan" id="ttd_peremajaan" type="checkbox" value="1">Peremajaan</label>

                      </div>
                    </div>                                      


                </div>


            </form>
        </div>
    </div>
</div>

<div class="modal" id="modal-form-role" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="form-contact" method="post" class="form-horizontal" data-toggle="validator">
                            {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title"></h3>
                </div>

                <div class="modal-body">
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        <label for="posisi" class="col-md-3 control-label">Role Name</label>
                        <div class="col-md-6">
                            <input type="text" id="posisi" name="posisi" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="spesimen" class="col-md-3 control-label">Description</label>
                        <div class="col-md-6">
                            <textarea type="spesimen" id="spesimen" name="spesimen" class="form-control"
                                required></textarea>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-save">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                </div>

            </form>
        </div>
    </div>
</div>

<div class="modal" id="modal-form-role-edit" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="form-contact" method="post" class="form-horizontal" data-toggle="validator">
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title"></h3>
                </div>

                <div class="modal-body">
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        <label for="posisi" class="col-md-3 control-label">Role Name</label>
                        <div class="col-md-6">
                            <input type="text" id="posisi" name="posisi" class="form-control" disabled>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="spesimen" class="col-md-3 control-label">Description</label>
                        <div class="col-md-6">
                            <textarea type="spesimen" id="spesimen" name="spesimen" class="form-control"
                                required></textarea>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-save">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                </div>

            </form>
        </div>
    </div>
</div>


<div class="modal" id="modal-form-mapping" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="form-contact" method="post" class="form-horizontal" data-toggle="validator">
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title"></h3>
                </div>

                <div class="modal-body">
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        <label for="id" class="col-md-3 control-label">ID</label>
                        <div class="col-md-6">
                            <input type="text" id="id" name="id" class="form-control" disabled>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="username" class="col-md-3 control-label">Username</label>
                        <div class="col-md-6">
                            <input type="text" id="username" name="username" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="email" class="col-md-3 control-label">Email</label>
                        <div class="col-md-6">
                            <input type="text" id="email" name="email" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="first-name" class="col-md-3 control-label">First Name</label>
                        <div class="col-md-6">
                            <input type="text" id="first-name" name="first-name" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="last-name" class="col-md-3 control-label">Last Name</label>
                        <div class="col-md-6">
                            <input type="text" id="last-name" name="last-name" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="last-name" class="col-md-3 control-label">Last Name</label>
                        <div class="col-md-6">
                            <input type="text" id="last-name" name="last-name" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="user-enable" class="col-md-3 control-label">User Enable</label>
                        <div class="col-md-6">
                            <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" checked>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-save">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                </div>
            </form>
        </div>
    </div>
</div>


<div class="modal" id="modal-form-mapping-edit" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">


            <form id="form-contact" method="post" class="form-horizontal" data-toggle="validator">
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title"></h3>
                </div>

                <div class="modal-body">
                    <div>

                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#detail" aria-controls="detail" role="tab"
                                    data-toggle="tab">Details</a></li>
                            <li role="presentation"><a href="#mapping" aria-controls="mapping" role="tab"
                                    data-toggle="tab">Role Mapping</a></li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="detail">
                                <div style="padding-top:50px">

                                    <div class="form-group">
                                        <label for="id" class="col-md-3 control-label">ID</label>
                                        <div class="col-md-6">
                                            <input type="text" id="id" name="id" class="form-control" readonly>
                                            <span class="help-block with-errors"></span>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="username" class="col-md-3 control-label">Username</label>
                                        <div class="col-md-6">
                                            <input type="text" id="username" name="username" class="form-control"
                                                readonly>
                                            <span class="help-block with-errors"></span>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="email" class="col-md-3 control-label">Email</label>
                                        <div class="col-md-6">
                                            <input type="text" id="email" name="email" class="form-control" required>
                                            <span class="help-block with-errors"></span>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="first_name" class="col-md-3 control-label">First Name</label>
                                        <div class="col-md-6">
                                            <input type="text" id="first_name" name="first_name" class="form-control"
                                                required>
                                            <span class="help-block with-errors"></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="last_name" class="col-md-3 control-label">Last Name</label>
                                        <div class="col-md-6">
                                            <input type="text" id="last_name" name="last_name" class="form-control"
                                                required>
                                            <span class="help-block with-errors"></span>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="user-enable" class="col-md-3 control-label">User Enable</label>
                                        <div class="col-md-6">
                                            <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked"
                                                checked>
                                            <span class="help-block with-errors"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div role="tabpanel" class="tab-pane" id="mapping">
                                <div style="padding-top:50px">
                                    <input type="hidden" id="id" name="id">
                                    <div class="form-group">
                                        <label for="user-enable" class="col-md-2 control-label">Realm Role</label>
                                        <div class="col-md-3">
                                            <label for="exampleFormControlSelect2">Available Role</label>
                                            <select multiple class="form-control" id="exampleFormControlSelect2">
                                                <option>role:siasn-bkn:perencanaan:TT-Renpegfor</option>
                                                <option>role:siasn-bkn:perencanaan:PP-Renpegfor</option>
                                                <option>role:siasn-bkn:perencanaan:PP-TTE-Renpegfor</option>
                                                <option>role:siasn-bkn:perencanaan:PP-TTE-BKN</option>
                                                <option>role:siasn-bkn:perencanaan:DK</option>
                                                <option>role:siasn-bkn:perencanaan:Menpan</option>
                                                <option>role:siasn-bkn:pengadaan:TT-BKN</option>
                                                <option>role:siasn-bkn:pengadaan:TT-Kanreg</option>
                                                <option>role:siasn-bkn:pengadaan:PP-BKN</option>
                                                <option>role:siasn-bkn:pengadaan:PP-TTE-BKN</option>
                                                <option>role:siasn-bkn:kp:TT-BKN</option>
                                                <option>role:siasn-bkn:kp:TT-Kanreg</option>
                                                <option>role:siasn-bkn:kp:PP-BKN</option>
                                                <option>role:siasn-bkn:kp:PP-TTE-BKN</option>
                                                <option>role:siasn-bkn:kp:Setneg</option>
                                                <option>role:siasn-bkn:pemberhentian:TT-BKN</option>

                                            </select>
                                            <button type="button" class="btn btn-default">Add
                                                Selected>></button>
                                        </div>
                                        <div class="col-md-3">
                                            <label for="exampleFormControlSelect2">Assigned Role</label>
                                            <select multiple class="form-control" id="exampleFormControlSelect2">
                                                <option>role:siasn-bkn:perencanaan:TT-Renpegfor</option>
                                                <option>role:siasn-bkn:perencanaan:PP-Renpegfor</option>
                                            </select>
                                            <button type="button" class="btn btn-default">Remove
                                                Selected</button>
                                        </div>
                                        <div class="col-md-3">
                                            <label for="exampleFormControlSelect2">Effectived Role</label>
                                            <select multiple class="form-control" id="exampleFormControlSelect2"
                                                disabled>
                                                <option>role:siasn-bkn:perencanaan:TT-Renpegfor</option>
                                                <option>role:siasn-bkn:perencanaan:PP-Renpegfor</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group mr-3">
                                        <div class="col-md-2">
                                            <button type="button" class="btn btn-default">Flush Role</button>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>



                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-save">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                </div>

            </form>
        </div>
    </div>
</div>

<div class="modal" id="modal-form-role-edit" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="form-contact" method="post" class="form-horizontal" data-toggle="validator">
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title"></h3>
                </div>

                <div class="modal-body">
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        <label for="posisi" class="col-md-3 control-label">Role Name</label>
                        <div class="col-md-6">
                            <input type="text" id="posisi" name="posisi" class="form-control" disabled>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="spesimen" class="col-md-3 control-label">Description</label>
                        <div class="col-md-6">
                            <textarea type="spesimen" id="spesimen" name="spesimen" class="form-control"
                                required></textarea>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-save">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                </div>

            </form>
        </div>
    </div>
</div>


<div class="modal" id="modal-form-template" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="form-contact" method="post" class="form-horizontal" data-toggle="validator"
                enctype="multipart/form-data">
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title"></h3>
                </div>

                <div class="modal-body">
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        <label for="daftar_layanan" class="col-md-3 control-label">Jenis Instansi</label>
                        <div class="col-md-6">
                            <select class="form-control" name="id_instansi" id="id_instansi">
                                @foreach ($instansi as $i)
                                <option value="{{ $i->id }}">{{ $i->name }}</option>
                                @endforeach
                            </select>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for=prosedur class="col-md-3 control-label">Jenis SK</label>
                        <div class="col-md-6">
                            <select class="form-control" name="id_jenis_sk" id="id_jenis_sk">
                                @foreach ($jenis_sk as $jk)
                                <option value="{{ $jk->id }}">{{ $jk->name }}</option>
                                @endforeach
                            </select>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="photo" class="col-md-3 control-label">File</label>
                        <div class="col-md-6">
                            <input type="file" id="file" name="file" class="form-control">
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-save">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                </div>

            </form>
        </div>
    </div>
</div>

<div class="modal" id="modal-form-pertek" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="form-contact" method="post" class="form-horizontal" data-toggle="validator"
                enctype="multipart/form-data">
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title"></h3>
                </div>

                <div class="modal-body">
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        <label for="id_jenis_pertek" class="col-md-3 control-label">Jenis Pertek</label>
                        <div class="col-md-6">
                            <select class="form-control" name="id_jenis_pertek" id="id_jenis_pertek">
                                @foreach ($jenis_pertek as $jp)
                                <option value="{{ $jp->id }}">{{ $jp->name }}</option>
                                @endforeach
                            </select>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>


                    <div class="form-group">
                        <label for="deskripsi" class="col-md-3 control-label">Deskripsi</label>
                        <div class="col-md-6">

                            <textarea id="deskripsi" name="deskripsi" class="form-control"></textarea>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="jrxml" class="col-md-3 control-label">Upload Jrxml</label>
                        <div class="col-md-6">
                            <input type="file" id="jrxml" name="jrxml" class="form-control">
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="json" class="col-md-3 control-label">Upload Json</label>
                        <div class="col-md-6">
                            <input type="file" id="json" name="json" class="form-control">
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="tanggal_versi" class="col-md-3 control-label">Tanggal Versi</label>
                        <div class="col-md-6">
                            <input type="date" id="tanggal_versi" name="tanggal_versi" class="form-control">
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-save">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                </div>

            </form>
        </div>
    </div>
</div>

<div class="modal" id="modal-form-detail" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="form-contact" method="post" class="form-horizontal" data-toggle="validator"
                enctype="multipart/form-data">
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title"></h3>
                </div>

                <div class="modal-body">
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        <label for="daftar_layanan" class="col-md-3 control-label">Daftar Layanan</label>
                        <div class="col-md-6">
                            <input type="text" id="daftar_layanan" name="daftar_layanan" class="form-control" autofocus
                                required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for=prosedur class="col-md-3 control-label">Prosedur</label>
                        <div class="col-md-6">
                            <input type=prosedur id="prosedur" name="prosedur" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="photo" class="col-md-3 control-label">Photo</label>
                        <div id="photo" class="col-md-6">
                            <img class="rounded-square" id="photo" width="50" height="50" src="" alt="">
                        </div>
                    </div>
                </div>



            </form>
        </div>
    </div>
</div>

<!-- <div class="modal" id="modal-form-tte-detail" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="form-contact" method="post" class="form-horizontal" data-toggle="validator">
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title"></h3>
                </div>

                <div class="modal-body">
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        <label for="posisi" class="col-md-3 control-label">Posisi</label>
                        <div class="col-md-6">
                            <input type="text" id="posisi" name="posisi" class="form-control" autofocus required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="spesimen" class="col-md-3 control-label">Spesimen</label>
                        <div class="col-md-6">
                            <input type="spesimen" id="spesimen" name="spesimen" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="nik" class="col-md-3 control-label">NIK</label>
                        <div class="col-md-6">
                            <input type="nik" id="nik" name="nik" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="nama" class="col-md-3 control-label">Nama</label>
                        <div class="col-md-6">
                            <input type="nama" id="nama" name="nama" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="nip" class="col-md-3 control-label">NIP</label>
                        <div class="col-md-6">
                            <input type="nip" id="nip" name="nip" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                </div>


            </form>
        </div>
    </div>
</div> -->

<div class="modal" id="modal-form-template-detail" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="form-contact" method="post" class="form-horizontal" data-toggle="validator"
                enctype="multipart/form-data">
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title"></h3>
                </div>

                <div class="modal-body">
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        <label for="daftar_layanan" class="col-md-3 control-label">Jenis Instansi</label>
                        <div class="col-md-6">
                            <select class="form-control" name="id_instansi" id="id_instansi">
                                @foreach ($instansi as $i)
                                <option value="{{ $i->id }}">{{ $i->name }}</option>
                                @endforeach
                            </select>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for=prosedur class="col-md-3 control-label">Jenis SK</label>
                        <div class="col-md-6">
                            <select class="form-control" name="id_jenis_sk" id="id_jenis_sk">
                                @foreach ($jenis_sk as $jk)
                                <option value="{{ $jk->id }}">{{ $jk->name }}</option>
                                @endforeach
                            </select>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="photo" class="col-md-3 control-label">File</label>
                        <div class="col-md-6">
                            <input type="file" id="file" name="file" class="form-control">
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-save">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                </div>

            </form>
        </div>
    </div>
</div>

<div class="modal" id="modal-form-template-edit" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="form-contact" method="post" class="form-horizontal" data-toggle="validator"
                enctype="multipart/form-data">
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title"></h3>
                </div>


                <div class="modal-body">
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        <label for="daftar_layanan" class="col-md-3 control-label">Jenis Instansi</label>
                        <div class="col-md-6">
                            <select class="form-control" name="id_instansi" id="id_instansi">
                                <option id="id-instansi"></option>
                                @foreach ($instansi as $i)
                                <option value="{{ $i->id }}">{{ $i->name }}</option>
                                @endforeach
                            </select>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for=prosedur class="col-md-3 control-label">Jenis SK</label>
                        <div class="col-md-6">
                            <select class="form-control" name="id_jenis_sk" id="id_jenis_sk">
                                <option id="id-jenis-sk"></option>
                                @foreach ($jenis_sk as $jk)
                                <option value="{{ $jk->id }}">{{ $jk->name }}</option>
                                @endforeach
                            </select>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="photo" class="col-md-3 control-label">File</label>
                        <div class="col-md-6">
                            <input type="file" id="file" name="file" class="form-control">
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-save">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                </div>

            </form>
        </div>
    </div>
</div>


<div class="modal" id="modal-form-pertek-edit" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="form-contact" method="post" class="form-horizontal" data-toggle="validator"
                enctype="multipart/form-data">
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title"></h3>
                </div>


                <div class="modal-body">
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        <label for="id_jenis_pertek" class="col-md-3 control-label">Jenis Pertek</label>
                        <div class="col-md-6">
                            <select class="form-control" name="id_jenis_pertek" id="id_jenis_pertek">
                                <option id="id-pertek"></option>
                                @foreach ($jenis_pertek as $jp)
                                <option value="{{ $jp->id }}">{{ $jp->name }}</option>
                                @endforeach
                            </select>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="deskripsi" class="col-md-3 control-label">Deskripsi</label>
                        <div class="col-md-6">

                            <textarea id="deskripsi" name="deskripsi" class="form-control"></textarea>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="jrxml" class="col-md-3 control-label">Upload Jrxml</label>
                        <div class="col-md-6">
                            <input type="file" id="jrxml" name="jrxml" class="form-control">
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="json" class="col-md-3 control-label">Upload Json</label>
                        <div class="col-md-6">
                            <input type="file" id="json" name="json" class="form-control">
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="tanggal_versi" class="col-md-3 control-label">Tanggal Versi</label>
                        <div class="col-md-6">
                            <input type="date" id="tanggal_versi" name="tanggal_versi" class="form-control">
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-save">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                </div>

            </form>
        </div>
    </div>
</div>

<div class="modal" id="modal-form-template-show" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="form-contact" method="post" class="form-horizontal" data-toggle="validator"
                enctype="multipart/form-data">
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title"></h3>
                </div>


                <div class="modal-body">
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        <label for="daftar_layanan" class="col-md-3 control-label">Jenis Instansi</label>
                        <div class="col-md-6">
                            <input type="text" id="id-instansi" name="id-instansi" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for=prosedur class="col-md-3 control-label">Jenis SK</label>
                        <div class="col-md-6">
                            <input type="text" id="id-jenis-sk" name="id-instansi" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="photo" class="col-md-3 control-label">File</label>
                        <div id="file" class="col-md-6">
                            <a id="file-data" target="_blank" href=""></a>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                </div>



            </form>
        </div>
    </div>
</div>

<div class="modal" id="modal-form-pertek-show" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="form-contact" method="post" class="form-horizontal" data-toggle="validator"
                enctype="multipart/form-data">
                {{ csrf_field() }} {{ method_field('POST') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title"></h3>
                </div>


                <div class="modal-body">
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        <label for="id_jenis_pertek" class="col-md-3 control-label">Jenis Pertek</label>
                        <div class="col-md-6">
                            <input type="text" id="id-pertek" name="id-pertek" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for=prosedur class="col-md-3 control-label">Deskripsi</label>
                        <div class="col-md-6">
                            <input type="text" id="deskripsi" name="deskripsi" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="jrxml" class="col-md-3 control-label">Jrxml</label>
                        <div id="jrxml" class="col-md-6">
                            <a id="jrxml-data" target="_blank" href=""></a>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="json" class="col-md-3 control-label">Json</label>
                        <div id="json" class="col-md-6">
                            <a id="json-data" target="_blank" href=""></a>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for=prosedur class="col-md-3 control-label">Tanggal Versi</label>
                        <div class="col-md-6">
                            <input type="text" id="tanggal_versi" name="tanggal_versi" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                </div>



            </form>
        </div>
    </div>
</div>


<!-- <div class="modal" id="modal-form-tte-edit" tabindex="1" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form id="edit-form-tte" method="post" class="form-horizontal" data-toggle="validator">
                {{ csrf_field() }} {{ method_field('PATCH') }}
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"> &times; </span>
                    </button>
                    <h3 class="modal-title"></h3>
                </div>

                <div class="modal-body">
                    <input type="hidden" id="id" name="id">
                    <div class="form-group">
                        <label for="posisi" class="col-md-3 control-label">Posisi</label>
                        <div class="col-md-6">
                            <input type="text" id="posisi" name="posisi" class="form-control" autofocus required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>

                    <div class="form-group">
                      <label for="spesimen" class="col-md-3 control-label">Spesimen</label>
                      <div class="col-md-6">
                          <input type="spesimen" id="spesimen" name="spesimen" class="form-control" required>
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="nik" class="col-md-3 control-label">NIK</label>
                      <div class="col-md-6">
                          <input type="nik" id="nik" name="nik" class="form-control" required>
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>                    

                    <div class="form-group">
                      <label for="nama" class="col-md-3 control-label">Nama</label>
                      <div class="col-md-6">
                          <input type="nama" id="nama" name="nama" class="form-control" required>
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>                    

                    <div class="form-group">
                      <label for="nip" class="col-md-3 control-label">NIP</label>
                      <div class="col-md-6">
                          <input type="nip" id="nip" name="nip" class="form-control" required>
                          <span class="help-block with-errors"></span>
                      </div>
                    </div>                    

                    <div class="form-group">
                      <label for="nip" class="col-md-3 control-label">PARAF</label>
                      <div class="col-md-6">
                          <label class="checkbox-inline"><input name="paraf_pi" id="paraf_pi" type="checkbox" value="1">PI</label>
                          <label class="checkbox-inline"><input name="paraf_kp" id="paraf_kp" type="checkbox" value="1">KP</label>
                          <label class="checkbox-inline"><input name="paraf_peremajaan" id="paraf_peremajaan" type="checkbox" value="1">Peremajaan</label>

                      </div>
                    </div>  

                    <div class="form-group">
                      <label for="nip" class="col-md-3 control-label">TTD</label>
                      <div class="col-md-6">
                          <label class="checkbox-inline"><input name="ttd_pi" id="ttd_pi" type="checkbox" value="1">PI</label>
                          <label class="checkbox-inline"><input name="ttd_kp" id="ttd_kp" type="checkbox" value="1">KP</label>
                          <label class="checkbox-inline"><input name="ttd_peremajaan" id="ttd_peremajaan" type="checkbox" value="1">Peremajaan</label>

                      </div>
                    </div>                                      

                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-save">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                </div>

            </form>
        </div>
    </div>
</div> -->


<script src="{{ asset('assets/jquery/jquery-1.12.4.min.js') }}"></script>
<script src="{{ asset('assets/bootstrap/js/bootstrap.min.js') }}"></script>

