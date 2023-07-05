
@extends('layouts.app')

@section('content')

    <!-- App Capsule -->
    <div id="appCapsule">

        <div class="section full mt-2 mb-2">
            <div class="section-title">Masukkan Data dengan Benar dan Teliti.</div>
                <div class="wide-block pb-1 pt-2">

                    <form class="needs-validation" method="POST" action="{{route('post-karya')}}" enctype="multipart/form-data">
                        @csrf
                            
                        <div class="form-group boxed">
                            <label class="label" for="city5">Portofolio</label>
                            <select name="menu" class="form-control"
                                onChange="top.location.href=this.options[this.selectedIndex].value;" value="GO">
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
                                    <span class="chip-label" id="time"></span>
                                </div>
                            </div>
                        </div>

                        <div class="form-group boxed">
                            <div class="input-wrapper">
                                <label class="label" for="city5">Trx No</label>
                                <input type="text" class="form-control" id="name5" value="{{$data['trx_id']}}" disabled>
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
                                    <option value="0">Pilih Stase</option>
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
                                <label class="label" for="jenis_karya_ilmiah">Jenis Karya Ilmiah</label>
                                <select class="form-control custom-select" id="jenis_karya_ilmiah" name="jenis_karya_ilmiah">
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
                                <input type="text" class="form-control" id="judul" name="judul">
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
                                <select class="form-control custom-select" id="supervisor" name="supervisor_id">
                                    <option>Pilih Supervisor </option>
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
                            <label class="label" >Softcopy</label>
                            <div class="custom-file-upload">
                                <input type="file" id="fileuploadInput" name="file" accept=".pptx, .pdf">
                                <label for="fileuploadInput">
                                    <span>
                                        <strong>
                                            <ion-icon name="cloud-upload-outline"></ion-icon>
                                            <i>Tap to Upload</i>
                                        </strong>
                                    </span>
                                </label>
                            </div>
                        </div>

                        <div class="form-group boxed">
                            <div class="input-wrapper">
                                <label class="label" for="address5">Deskripsi Kegiatan</label>
                                <textarea id="address5" rows="2" class="form-control"></textarea>
                                <i class="clear-input">
                                    <ion-icon name="close-circle"></ion-icon>
                                </i>
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
    <script src="{{asset('assets/js/portofolioform.js')}}"></script>
    @endpush

    @endsection