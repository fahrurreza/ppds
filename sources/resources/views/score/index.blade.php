@extends('layouts.app')

@section('content')

<!-- Extra Header -->
<div class="extraHeader">
        <ul class="nav nav-tabs style1" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#tab1" role="tab">
                    1
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#tab2" role="tab">
                    2
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#tab3" role="tab">
                    3
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#tab4" role="tab">
                    4
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#tab5" role="tab">
                    5
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#tab6" role="tab">
                    6
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#tab7" role="tab">
                    7
                </a>
            </li>
        </ul>
    </div>
    <!-- * Extra Header -->
    
    <!-- App Capsule -->
    <div id="appCapsule" class="extra-header-active">


        <div class="tab-content mt-1">


            <!-- Semester 1 tab -->
            <div class="tab-pane fade show active" id="tab1" role="tabpanel">
                <div class="listview-title mt-2">Semester 1</div>
                    <ul class="listview link-listview">
                        <li>
                            <a href="#">
                                Bronkoskopi Dasar
                                <span class="badge badge-success">80</span>
                            </a>
                        </li>
                        
                        <li>
                            <a href="#">
                                Faal Paru Klinik Terapan
                                <span class="badge badge-danger">52</span>
                            </a>
                        </li>
                        
                        <li>
                            <a href="#">
                                Farmakologi
                                <span class="badge badge-success">80</span>
                            </a>
                        </li>
                        
                        <li>
                            <a href="#">
                                Bronkoskopi Dasar
                                <span class="badge badge-success">80</span>
                            </a>
                        </li>
                        
                    </ul>
                
            </div>
            <!-- * pilled tab -->



            <!-- lined tab -->
            <div class="tab-pane fade" id="tab2" role="tabpanel">

                <div class="listview-title mt-2">Semester 2</div>
                    <ul class="listview link-listview">
                        <li>
                            <a href="#">
                                Perawatan Intensif Infeksi
                                <span class="badge badge-success">80</span>
                            </a>
                        </li>
                        
                        <li>
                            <a href="#">
                                Perawatan Intensif Non Infeksi
                                <span class="badge badge-danger">52</span>
                            </a>
                        </li>
                        
                        <li>
                            <a href="#">
                                Penalataksanaan Penyakit Respirasi Yang Berkaitan Dengan Tidur Dan Vaskuler Paru
                                <span class="badge badge-success">80</span>
                            </a>
                        </li>
                        
                        <li>
                            <a href="#">
                                Bronkoskopi Dasar
                                <span class="badge badge-success">80</span>
                            </a>
                        </li>
                        
                    </ul>

            </div>
            <!-- * lined tab -->
        </div>
    </div>
    <!-- * App Capsule -->

@endsection