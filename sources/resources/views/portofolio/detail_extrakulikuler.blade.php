
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

                    <form class="needs-validation" method="POST" action="{{route('post-extrakulikuler')}}" enctype="multipart/form-data">
                        @csrf

                        <div class="form-group boxed">
                            <label class="label" for="city5">Portofolio</label>
                            <select name="menu" class="form-control" disabled>
                                <option value="{{route('tindakan-portofolio')}}">Pelayanan/Tindakan</option>
                                <option value="{{route('case-portofolio')}}">Case Report</option>
                                <option value="{{route('karya-portofolio')}}">Karya ilmiah</option>
                                <option selected value="{{route('extrakulikuler-portofolio')}}">Extrakurikuler</option>
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

                        <div class="form-group boxed">
                            <div class="input-wrapper">
                                <label class="label" for="kegiatan">Kegiatan</label>
                                <select class="form-control custom-select" id="kegiatan" name="stase_id" disabled>
                                    <option value="0">Pilih Kegiatan</option>
                                    @foreach($data['stase'] as $option)
                                        @if($data['portofolio']->stase_id == $option->stase_id)
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
                                <label class="label" for="supervisor">Supervisor</label>
                                <select class="form-control custom-select" id="supervisor" name="supervisor_id" disabled>
                                    @foreach($data['supervisor'] as $option)
                                        @if($data['portofolio']->supervisor_id == $option->id)
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
                                <label class="label" for="description">Deskripsi Kegiatan</label>
                                <textarea id="description" rows="2" class="form-control" name="description" required name="deskripsi" disabled>{{$data['portofolio']->portofolio->description}}</textarea>
                                <i class="clear-input">
                                    <ion-icon name="close-circle"></ion-icon>
                                </i>
                            </div>
                        </div>

                        <div class="form-group boxed">
                            <label class="label" >Foto Kegiatan</label>
                            
                            <span>
                                <strong>
                                <img src="{{asset('assets/img/posting/'.$data['portofolio']->path->path)}}" alt="">
                                </strong>
                            </span>
                                
                        </div>

                        <!-- <button type="submit" class="btn btn-primary btn-block">SAVE</button> -->
                    </form>

                </div>
            </div>
        </div>
    </div>
    <!-- * App Capsule -->

    @endsection