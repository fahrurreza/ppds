
@extends('layouts.app')

@section('content')

@push('custom-style')
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
@endpush

<!-- App Capsule -->
<div id="appCapsule">

    <div class="section full mt-2 mb-2">
        <div class="section-title">Masukkan Data dengan Benar dan Teliti.</div>
            <div class="wide-block pb-1 pt-2">
                <form class="needs-validation" method="POST" action="{{route('post-tindakan')}}" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group boxed">
                        <label class="label" for="city5">Portofolio</label>
                        <select name="menu" class="form-control"
                            onChange="top.location.href=this.options[this.selectedIndex].value;" value="GO">
                            <option selected value="{{route('tindakan-portofolio')}}">Pelayanan/Tindakan</option>
                            <option value="{{route('case-portofolio')}}">Case Report</option>
                            <option value="{{route('karya-portofolio')}}">Karya ilmiah</option>
                            <option value="{{route('extrakulikuler-portofolio')}}">Extrakurikuler</option>
                        </select>
                    </div>

                    <div class="form-group boxed">
                        <div class="input-wrapper">
                            <label class="label" for="trx_id">Trx No</label>
                            <input type="text" class="form-control" id="trx_id" disabled>
                            <i class="clear-input">
                                <ion-icon name="close-circle"></ion-icon>
                            </i>
                            <div class="valid-feedback">Looks good!</div>
                            <div class="invalid-feedback">Please enter your name.</div>
                        </div>
                    </div>

                    <div class="form-group boxed">
                        <div class="input-wrapper">
                            <label class="label" for="address5">Tanggal Kegiatan</label>

                            <div class="chip chip-media">
                                <i class="chip-icon bg-info">
                                    <ion-icon name="alarm"></ion-icon>
                                </i>
                                <span class="chip-label" id="time"></span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group boxed">
                        <input type="hidden" name="portofolio_id" value="1">
                        <div class="input-wrapper">
                            <label class="label" for="hospital">Hospital</label>
                            <select class="form-control custom-select select2" id="hospital" name="hospital_id" required>
                                <option value="">Pilih Hospital </option>
                                @foreach($data['hospital'] as $option)
                                <option value="{{$option->hospital_id}}">{{$option->hospital_name}}</option>
                                @endforeach
                            </select>
                            <i class="clear-input">
                                <ion-icon name="close-circle"></ion-icon>
                            </i>
                            <div class="valid-feedback">Looks good!</div>
                            <div class="invalid-feedback">Please enter your name.</div>
                        </div>
                    </div>
                    <div class="form-group boxed">
                        <div class="input-wrapper">
                            <label class="label" for="supervisor">Supervisor</label>
                            <select class="form-control custom-select" id="supervisor" name="supervisor_id" required>
                                <option value="">Pilih Supervisor </option>
                                @foreach($data['supervisor'] as $option)
                                <option value="{{$option->id}}">{{$option->user_name}}</option>
                                @endforeach
                            </select>
                            <i class="clear-input">
                                <ion-icon name="close-circle"></ion-icon>
                            </i>
                            <div class="valid-feedback">Looks good!</div>
                            <div class="invalid-feedback">Please enter your name.</div>
                        </div>
                    </div>
                    <div class="form-group boxed">
                        <div class="input-wrapper">
                            <label class="label" for="kegiatan">Kegiatan</label>
                            <select class="form-control custom-select" id="kegiatan" name="stase_id">
                                <option value="">Pilih Kegiatan</option>
                                @foreach($data['stase'] as $option)
                                <option value="{{$option->stase_id}}">{{$option->stase_name}}</option>
                                @endforeach
                            </select>
                            <i class="clear-input">
                                <ion-icon name="close-circle"></ion-icon>
                            </i>
                            <div class="valid-feedback">Looks good!</div>
                            <div class="invalid-feedback">Please enter your name.</div>
                        </div>
                    </div>
                    <div class="form-group boxed">
                        <div class="input-wrapper">
                            <label class="label" for="description">Deskripsi Kegiatan</label>
                            <textarea id="description" rows="2" class="form-control" name="description" required></textarea>
                            <i class="clear-input">
                                <ion-icon name="close-circle"></ion-icon>
                            </i>
                        </div>
                    </div>
                    <div class="form-group boxed">
                        <label class="label" >Foto Kegiatan</label>
                        <div class="custom-file-upload">
                            <input type="file" id="fileuploadInput" name="photo" accept="image/*" capture="camera" required>
                            <label for="fileuploadInput">
                                <span>
                                    <strong>
                                    <ion-icon name="camera-outline"></ion-icon>
                                        <i>Open Camera</i>
                                    </strong>
                                </span>
                            </label>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">SAVE</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- * App Capsule -->
@push('custom-scripts')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.8/js/select2.min.js" defer></script>
    <script>
        $(document).ready(function() {
            $('#supervisor').select2();
            $('#hospital').select2();
            $('#kegiatan').select2();
        });
    </script>
    <script src="{{asset('assets/js/portofolioform.js')}}"></script>
@endpush

@endsection