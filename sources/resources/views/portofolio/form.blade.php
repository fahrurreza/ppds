@extends('layouts.app')

@section('content')

<div id="appCapsule">

    <div class="section full mt-2 mb-2">
        <div class="section-title">Masukkan Data dengan Benar dan Teliti.</div>
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