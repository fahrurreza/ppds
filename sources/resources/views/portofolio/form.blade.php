@extends('layouts.app')

@section('content')

<div id="appCapsule">

        <div class="wide-block pb-1 pt-2">

            <form class="needs-validation" novalidate>

                <div class="form-group boxed">
                    <label class="label" for="city5">Portofolio</label>
                    <select name="menu" class="form-control"
                        onChange="top.location.href=this.options[this.selectedIndex].value;" value="GO">
                        <option selected>Pilih Portofolio</option>
                        <option value="{{route('tindakan-portofolio')}}">Pelayanan/Tindakan</option>
                        <option value="{{route('case-portofolio')}}">Case Report</option>
                        <option value="{{route('karya-portofolio')}}">Karya ilmiah</option>
                        <option value="{{route('extrakulikuler-portofolio')}}">Extrakurikuler</option>
                    </select>
                </div>
            </form>

    <div class="section text-center">
            <img src="https://mobilekit.bragherstudio.com/view29/assets/img/sample/photo/vector5.png" alt="image" class="imaged w200">
        </div>
        
        </div>
        
        <div class="section full mt-2">
            <div class="section-title">FAQ</div>

            <div class="accordion" id="accordionExample1">

                <div class="item">
                    <div class="accordion-header">
                        <button class="btn collapsed" type="button" data-toggle="collapse" data-target="#accordion1">
                            <h4>Bagaimana Cara input Portofolio Tindakan?</h4>
                        </button>
                    </div>
                    <div id="accordion1" class="accordion-body collapse" data-parent="#accordionExample1">
                        <div class="accordion-content">
                            1. Pilih Portofolio Tindakan<br>
                            2. Pilih Nama Stase<br>
                            3. Pilih Rumh Sakit dimana kegiatan di catat<br>
                            4. Masukkan Deskripsi Kegiatan<br>
                            5. Dan Photo Dokumentasi wajib di ambil<br>
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="accordion-header">
                        <button class="btn collapsed" type="button" data-toggle="collapse" data-target="#accordion3">
                            <h4>Bagaimana Cara input Portofolio Case Report?</h4>
                        </button>
                    </div>
                    <div id="accordion3" class="accordion-body collapse" data-parent="#accordionExample1">
                        <div class="accordion-content">
                            We are using lastest Bootstrap 4.
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="accordion-header">
                        <button class="btn collapsed" type="button" data-toggle="collapse" data-target="#accordion4">
                            <h4>Bagaimana Cara input Portofolio Karya Ilmiah?</h4>
                        </button>
                    </div>
                    <div id="accordion4" class="accordion-body collapse" data-parent="#accordionExample1">
                        <div class="accordion-content">
                            You can make mobile websites or progressive web apps for mobile devices.
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="accordion-header">
                        <button class="btn collapsed" type="button" data-toggle="collapse" data-target="#accordion5">
                            <h4>Bagaimana Cara input Portofolio Extrakurikuler?</h4>
                        </button>
                    </div>
                    <div id="accordion5" class="accordion-body collapse" data-parent="#accordionExample1">
                        <div class="accordion-content">
                            No, this template build with HTML, CSS and Javascript and some love.
                        </div>
                    </div>
                </div>

            </div>
        </div>
        
    <!-- Content Action Sheet -->
    <div class="modal fade action-sheet" id="actionSheetContent" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="section full mt-2 mb-2">
                        <div class="section-title center">*PDF dan PPT</div>
                        <div class="wide-block pb-2 pt-2">

                            <form>
                                <div class="custom-file-upload">
                                    <input type="file" id="fileuploadInput" accept=".pptx, .pdf">
                                    <label for="fileuploadInput">
                                        <span>
                                            <strong>
                                                <ion-icon name="cloud-upload-outline"></ion-icon>
                                                <i>Tap to Upload</i>
                                            </strong>
                                        </span>
                                    </label>
                                </div>

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- * Content Action Sheet -->
</div>
<!-- * welcome notification -->
@push('custom-scripts')
<script src="{{asset('assets/js/portofolioform.js')}}"></script>
@endpush


@endsection