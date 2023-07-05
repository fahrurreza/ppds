@extends('layouts.app')

@section('content')

<div id="appCapsule">

    <div class="header-large-title">
        <h1 class="title text-center"><img src="{{asset('assets/img/sample/photo/vector7.png')}}" alt="image" class="imaged w120">
        </h1>
        <h4 class="subtitle text-center">DEPARTEMEN PULMOLOGI DAN RESPIRASI</h4>
    </div>
    <hr>

    <div class="section mt-3 mb-3">
        <div class="card">
            <div class="card-body d-flex justify-content-between align-items-end">
                <div>
                    <h6 class="card-subtitle">Mode</h6>
                    <h5 class="card-title mb-0 d-flex align-items-center justify-content-between">
                        Dark Mode
                    </h5>
                </div>
                <div class="custom-control custom-switch">
                    <input type="checkbox" class="custom-control-input dark-mode-switch" id="darkmodeswitch">
                    <label class="custom-control-label" for="darkmodeswitch"></label>
                </div>

            </div>
        </div>
    </div>
    <div class="section mt-3 mb-3">
        <div class="section-title center">Monitoring Portofolio</div>
        <div class="card">
            <div class="wide-block p-0">

                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Status</th>
                                <th scope="col">Amount</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><button type="button" class="btn btn-outline-warning mr-1 mb-1">Active</button></td>

                                <td><span class="badge badge-warning">{{portofolioCount(1)}}</span></td>
                            </tr>
                            <tr>
                            <td><button type="button" class="btn btn-outline-success mr-1 mb-1">Verrified</button></td>
                                <td><span class="badge badge-success">{{portofolioCount(3)}}</span></td>
                            </tr>
                            <tr>
                            <td><button type="button" class="btn btn-outline-danger mr-1 mb-1">Revision</button></td>                                
                                <td><span class="badge badge-danger">{{portofolioCount(2)}}</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>

    <div class="section full mt-3 mb-3">
        <div class="section-title center">Supervisor List</div>
        <div class="carousel-multiple owl-carousel owl-theme">

            <div class="item">
                <div class="card">
                    <img src="assets/img/sample/photo/d1.jpg" class="card-img-top" alt="image">
                    <div class="card-body pt-2">
                        <h4 class="mb-0"> Prof. Dr. Tamsil Syafiudin, Sp.P(K)</h4>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="card">
                    <img src="assets/img/sample/photo/d2.jpg" class="card-img-top" alt="image">
                    <div class="card-body pt-2">
                        <h4 class="mb-0"> Dr. Zainuddin Amir, Sp.P(K)</h4>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="card">
                    <img src="assets/img/sample/photo/d3.jpg" class="card-img-top" alt="image">
                    <div class="card-body pt-2">
                        <h4 class="mb-0">Dr. Widirahardjo, Sp.P(K)</h4>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="card">
                    <img src="assets/img/sample/photo/d4.jpg" class="card-img-top" alt="image">
                    <div class="card-body pt-2">
                        <h4 class="mb-0"> Dr. Pandiaman Pandia, M.Ked(Paru), Sp.P(K)</h4>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="card">
                    <img src="assets/img/sample/photo/d6.jpg" class="card-img-top" alt="image">
                    <div class="card-body pt-2">
                        <h4 class="mb-0">dr. Setia Putra Tarigan, Sp.P</h4>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="card">
                    <img src="assets/img/sample/photo/d5.jpg" class="card-img-top" alt="image">
                    <div class="card-body pt-2">
                        <h4 class="mb-0">Dr. Syamsul Bihar, M.Ked(Paru), Sp.P</h4>
                    </div>
                </div>
            </div>

        </div>

    </div>



    <div class="section mt-3 mb-3">
        <div class="card">
            <img src="assets/img/sample/photo/wide4.jpg" class="card-img-top" alt="image">
            <div class="card-body">
                <h5 class="card-title">Support Admin</h5>
                <p class="card-text">
                    Klik tombol chat untuk menghubungi admin.<br>
                    Office Hour : 08:00 - 17:00
                </p>
                <a href="https://wa.me/85296362789?text=I'm%20interested%20in%20your%20car%20for%20sale"
                    class="btn btn-primary">
                    <ion-icon name="cube-outline"></ion-icon>
                    Chat
                </a>
            </div>
        </div>
    </div>

</div>

<!-- welcome notification  -->
<div id="notification-welcome" class="notification-box">
    <div class="notification-dialog android-style">
        <div class="notification-header">
            <div class="in">
                <img src="assets/img/icon/72x72.png" alt="image" class="imaged w24">
                <strong>PPDS LOGBOOK</strong>
                <span>just now</span>
            </div>
            <a href="#" class="close-button">
                <ion-icon name="close"></ion-icon>
            </a>
        </div>
        <div class="notification-content">
            <div class="in">
                <h3 class="subtitle">Welcome to PPD LOGBOOK</h3>
                <div class="text">
                    Aplikasi Pencatatan Kegiatan PPDS yang terintegrasi dengan administrasi dan supervisor
                    DEPARTEMEN PULMOLOGI DAN RESPIRASI USU.
                </div>
            </div>
        </div>
    </div>
</div>
<!-- * welcome notification -->

@endsection