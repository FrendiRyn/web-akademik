@extends('layouts.app')
@section('title', 'Tambah Program Studi')
@section('content')
<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Management Program Studi</h3>
            </div>
        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Form Tambah Program Studi</h2>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <form class="" action="{{ route('majors.store') }}" method="POST" autocomplete="off">
                            @csrf
                            <span class="section">Personal Program Studi</span>
                            <div class="field item form-group">
                                <label class="col-form-label col-md-3 col-sm-3 label-align" for="kode_jurusan">Kode Prodi<span class="required">*</span></label>
                                <div class="col-md-6 col-sm-6">
                                    <input class="form-control @error('kode_jurusan') is-invalid @enderror" type="text" name="kode_jurusan" id="kode_jurusan" placeholder="Kode Prodi" value="{{ old('kode_jurusan') }}" required="required" />
                                    @error('kode_jurusan')
                                        <span class="badge badge-warning">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="field item form-group">
                                <label class="col-form-label col-md-3 col-sm-3 label-align" for="nama_prodi">Fakultas<span class="required">*</span></label>
                                <div class="col-md-6 col-sm-6">
                                    <select class="form-control @error('nama_prodi') is-invalid @enderror" name="nama_prodi" id="nama_prodi" required="required">
                                        <option value="">Pilih Fakultas</option>
                                        @foreach($studyprogram as $last_rows)
                                            <option value="{{ $last_rows->id }}">{{ $last_rows->nama_prodi }}</option>
                                        @endforeach
                                    </select>
                                    @error('nama_prodi')
                                        <span class="badge badge-warning">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="field item form-group">
                                <label class="col-form-label col-md-3 col-sm-3 label-align" for="nama_jurusan">Nama Prodi<span class="required">*</span></label>
                                <div class="col-md-6 col-sm-6">
                                    <input class="form-control @error('nama_jurusan') is-invalid @enderror" type="text" name="nama_jurusan" id="nama_jurusan" placeholder="Nama Prodi" value="{{ old('nama_jurusan') }}" required="required" />
                                    @error('nama_jurusan')
                                        <span class="badge badge-warning">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="field item form-group">
                                <label class="col-form-label col-md-3 col-sm-3 label-align" for="dosen">KA Prodi<span class="required">*</span></label>
                                <div class="col-md-6 col-sm-6">
                                    <select class="form-control @error('dosen') is-invalid @enderror" name="dosen" id="dosen" required="required">
                                        <option value="">Pilih KA Prodi</option>
                                        @foreach($lecturer as $last_row)
                                            <option value="{{ $last_row->id }}">{{ $last_row->nama_dosen }}</option>
                                        @endforeach
                                    </select>
                                    @error('dosen')
                                        <span class="badge badge-warning">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="field item form-group">
                                <label class="col-form-label col-md-3 col-sm-3 label-align">Aktif<span class="required">*</span></label>
                                <div class="col-md-6 col-sm-6">
                                    <div class="radio col-md-2 col-sm-2">
                                        <label for="yes">
                                            <input type="radio" class="@error('aktif') is-invalid @enderror" name="aktif" id="yes" value="Y" required="required"> Yes
                                        </label>
                                    </div>
                                    <div class="radio col-md-2 col-sm-2">&nbsp;&nbsp;&nbsp;&nbsp;
                                        <label for="no">
                                            <input type="radio" class="@error('aktif') is-invalid @enderror" name="aktif" id="no" value="N" required="required"> No
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="ln_solid">
                                <div class="form-group">
                                    <div class="col-md-6 offset-md-3"><br />
                                        <button type='submit' class="btn btn-primary btn-sm">Save</button>
                                        <button type='reset' class="btn btn-success btn-sm">Reset</button>
                                        <button type='reset' class="btn btn-secondary btn-sm cancel">Cancel</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /page content -->
@endsection
@section('script')
<script src="{{ asset('assets/vendors/validator/multifield.js') }}"></script>
<script src="{{ asset('assets/vendors/validator/validator.js') }}"></script>

<!-- Javascript functions	-->
<script>
    $(document).ready(function() {
        $('.cancel').on('click', function() {
            window.location = `${SITEURL}/major/major-list`;
        });
        $('#nama_prodi').select2({
            width: '100%'
        });
        $('#dosen').select2({
            width: '100%'
        });
    });
</script>
@endsection