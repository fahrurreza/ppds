
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
                    <div class="form-group boxed">
                        <label class="label" for="city5">Portofolio</label>
                        <select name="menu" class="form-control" disabled>
                            <option selected value="{{route('tindakan-portofolio')}}">Pelayanan/Tindakan</option>
                            <option value="{{route('case-portofolio')}}">Case Report</option>
                            <option value="{{route('karya-portofolio')}}">Karya ilmiah</option>
                            <option value="{{route('extrakulikuler-portofolio')}}">Extrakurikuler</option>
                        </select>
                    </div>

                    <div class="form-group boxed">
                        <div class="input-wrapper">
                            <label class="label" for="address5">Tanggal Kegiatan</label>

                            <div class="chip chip-media">
                                <i class="chip-icon bg-info">
                                    <ion-icon name="alarm"></ion-icon>
                                </i>
                                <span class="chip-label" id="time">{{$data['portofolio']->portofolio->create_date}}</span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group boxed">
                        <div class="input-wrapper">
                            <label class="label" for="city5">Trx No</label>
                            <input type="text" class="form-control" id="name5" value="{{$data['portofolio']->trx_id}}" disabled>
                            <i class="clear-input">
                                <ion-icon name="close-circle"></ion-icon>
                            </i>
                            <div class="valid-feedback">Looks good!</div>
                            <div class="invalid-feedback">Please enter your name.</div>
                        </div>
                    </div>

                    <form id="update" action="{{route('update-portofolio')}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="trx_id" value="{{$data['portofolio']->trx_id}}">
                        <input type="hidden" name="portofolio_id" value="{{$data['portofolio']->portofolio->portofolio_id}}">
                        <div class="form-group boxed">
                            <div class="input-wrapper">
                                <label class="label" for="hospital">Hospital</label>
                                <select class="form-control custom-select select2" id="hospital" name="hospital_id" @if($data['portofolio']->portofolio->status == 5) disabled @endif>
                                    @foreach($data['hospital'] as $option)
                                        @if($option->hospital_id == $data['portofolio']->hospital_id)
                                        <option selected value="{{$option->hospital_id}}">{{$option->hospital_name}}</option>
                                        @else
                                        <option value="{{$option->hospital_id}}">{{$option->hospital_name}}</option>
                                        @endif
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
                                <select class="form-control custom-select" id="supervisor" name="supervisor_id" @if($data['portofolio']->portofolio->status == 5) disabled @endif>
                                    @foreach($data['supervisor'] as $option)
                                        @if($data['portofolio']->portofolio->supervisor_id == $option->id)
                                        <option selected value="{{$option->id}}">{{$option->user_name}}</option>
                                        @else
                                        <option value="{{$option->id}}">{{$option->user_name}}</option>
                                        @endif
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
                                <select class="form-control custom-select" id="kegiatan" name="stase_id" @if($data['portofolio']->portofolio->status == 5) disabled @endif>
                                    @foreach($data['stase'] as $option)
                                        @if($data['portofolio']->portofolio->stase_id == $option->stase_id)
                                        <option selected value="{{$option->stase_id}}">{{$option->stase_name}}</option>
                                        @else
                                        <option value="{{$option->stase_id}}">{{$option->stase_name}}</option>
                                        @endif
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
                                <textarea id="description" rows="2" class="form-control" name="description" @if($data['portofolio']->portofolio->status == 5) disabled @endif>{{$data['portofolio']->description}}</textarea>
                                <i class="clear-input">
                                    <ion-icon name="close-circle"></ion-icon>
                                </i>
                            </div>
                        </div>
                        <div class="form-group boxed">
                            <label class="label" >Foto Kegiatan</label>
                            <div class="custom-file-upload">
                                <input type="file" id="fileuploadInput" name="photo" accept="image/*" @if($data['portofolio']->portofolio->status == 5) disabled @endif>
                                <label for="fileuploadInput">
                                    <div class="item">
                                        <span>
                                            <strong>
                                            <img src="{{asset('assets/img/posting/'.$data['portofolio']->path->path)}}" alt="" class="imaged w-100 square">
                                            </strong>
                                        </span>
                                    </div>
                                </label>
                            </div>
                                
                        </div>
                    </form>
                    @if($data['portofolio']->portofolio->status == 1)
                    
                        <div class="row">
                            <div class="col-6">
                                <button type="button" class="btn btn-primary btn-block" id="save">Save</button>
                            </div>
                            <div class="col-6">
                                <form action="{{route('delete-portofolio')}}" method="post">
                                    @csrf
                                    <input type="hidden" name="portofolio_id" value="{{$data['portofolio']->portofolio->id}}">
                                    <button type="submit" class="btn btn-danger btn-block">Delete</button>
                                </form>
                            </div>
                        </div>
                    @endif
            </div>
        </div>
    </div>
</div>
<!-- * App Capsule -->

@push('custom-scripts')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.8/js/select2.min.js" defer></script>
    <script src="{{asset('assets/js/portofolioform.js')}}"></script>
    <script>
        $(document).ready(function() {
            $('#supervisor').select2();
            $('#jenis_karya_ilmiah').select2();
            $('#kegiatan').select2();
        });
    </script>
    <script>
        var form = document.getElementById("update");

        document.getElementById("save").addEventListener("click", function () {
            form.submit();
        });
    </script>
@endpush

@endsection