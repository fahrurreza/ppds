
@extends('layouts.app')

@section('content')

    <!-- App Capsule -->
    <div id="appCapsule">

        <div class="section full mt-2 mb-2">
            <div class="section-title">Masukkan Data dengan Benar dan Teliti.</div>
                <div class="wide-block pb-1 pt-2">

                            
                    <div class="form-group boxed">
                        <label class="label" for="city5">Portofolio</label>
                        <select name="menu" class="form-control" disabled>
                            <option value="{{route('tindakan-portofolio')}}">Pelayanan/Tindakan</option>
                            <option value="{{route('case-portofolio')}}">Case Report</option>
                            <option selected value="{{route('karya-portofolio')}}">Karya ilmiah</option>
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
                            <label class="label" for="jenis_karya_ilmiah">Jenis Karya Ilmiah</label>
                            <select class="form-control custom-select" id="jenis_karya_ilmiah" name="jenis_karya_ilmiah" disabled>
                                <option>Pilih Jenis Karya Ilmiah </option>
                                <option value="Proposal Penelitian">Proposal Penelitian</option>
                                <option value="Hasil Tesis">Hasil Tesis</option>
                                <option value="Case Report">Case Report</option>
                                <option value="Journal Reading">Journal Reading</option>
                                <option value="Text Book Reading">Text Book Reading</option>
                                <option value="Case Of Death">Case Of Death</option>
                                <option value="Multidisciplinary Team">Multidisciplinary Team</option>
                                <option value="Tugas Nasional">Tugas Nasional</option>
                                <option value="Tugas Internasional">Tugas Internasional</option>
                                <option value="Publikasi Penelitian">Publikasi Penelitian</option>
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
                            <label class="label" for="judul">Judul Karya Ilmiah</label>
                            <input type="text" class="form-control" id="judul" name="judul" value="{{$data['portofolio']->judul}}">
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
                        <label class="label" >Softcopy</label>
                        <div class="custom-file-upload">
                            <input type="file" name="file" accept=".pptx, .pdf">
                            <label for="fileuploadInput">
                                <span>
                                    <strong>
                                        <ion-icon name="document-outline"></ion-icon>
                                        <i>{{$data['portofolio']->path->path}}</i>
                                    </strong>
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="form-group boxed">
                        <div class="input-wrapper">
                            <label class="label" for="description">Deskripsi Kegiatan</label>
                            <textarea id="description" rows="2" class="form-control" name="description" required name="deskripsi" disabled>{{$data['portofolio']->description}}</textarea>
                            <i class="clear-input">
                                <ion-icon name="close-circle"></ion-icon>
                            </i>
                        </div>
                    </div>
                    
                    @if($data['portofolio']->portofolio->status == 1)
                    <form action="{{route('delete-portofolio')}}" method="post">
                        @csrf
                        <input type="hidden" name="portofolio_id" value="{{$data['portofolio']->portofolio->id}}">
                        <button type="submit" class="btn btn-danger btn-block">Delete</button>
                    </form>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <!-- * App Capsule -->

    @endsection