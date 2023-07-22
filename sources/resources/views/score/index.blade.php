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
            <div class="listview-title mt-2"><h3>Semester 1</h3></div>
            <ul class="listview image-listview text">

                <li class="multi-level">
                    <a href="#" class="item">
                        <div class="in">
                            <div>Bronkoskopi</div>
                        </div>
                        
                        <div class="icon-box right">
                            <span class="badge badge-success">80</span>
                        </div>
                    </a>
                    <!-- sub menu -->
                    <ul class="listview image-listview">
                        <li>
                            <a href="#" class="item">
                                <div class="icon-box bg-primary">
                                    <ion-icon name="reader-outline"></ion-icon>
                                </div>
                                <div class="in">
                                    Nilai Stase
                                    <span class="badge badge-danger">10</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="item">
                                <div class="icon-box bg-primary">
                                    <ion-icon name="people-outline"></ion-icon>
                                </div>
                                <div class="in">
                                    Nilai Attitude
                                    <span class="badge badge-danger">90</span>
                                </div>
                            </a>
                        </li>
                        
                        <li>
                            <a href="#" class="item">
                                <div class="icon-box bg-primary">
                                    <ion-icon name="people-outline"></ion-icon>
                                </div>
                                <div class="in">
                                    Status Stase 
                                    <div class="chip chip-primary ml-05 mb-05">
                                        <span class="chip-label">Finished</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <!-- * sub menu -->
                </li>

                <li class="multi-level">
                    <a href="#" class="item">
                        <div class="in">
                            <div>Radioterapi</div>
                        </div>
                        
                        <div class="icon-box right">
                            <span class="badge badge-success">70</span>
                        </div>
                    </a>
                    <!-- sub menu -->
                    <ul class="listview image-listview">
                        <li>
                            <a href="#" class="item">
                                <div class="icon-box bg-primary">
                                    <ion-icon name="reader-outline"></ion-icon>
                                </div>
                                <div class="in">
                                    Nilai Stase
                                    <span class="badge badge-danger">10</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="item">
                                <div class="icon-box bg-primary">
                                    <ion-icon name="people-outline"></ion-icon>
                                </div>
                                <div class="in">
                                    Nilai Attitude
                                    <span class="badge badge-danger">90</span>
                                </div>
                            </a>
                        </li>
                        
                        <li>
                            <a href="#" class="item">
                                <div class="icon-box bg-primary">
                                    <ion-icon name="people-outline"></ion-icon>
                                </div>
                                <div class="in">
                                    Status Stase 
                                    <div class="chip chip-primary ml-05 mb-05">
                                        <span class="chip-label">Finished</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <!-- * sub menu -->
                </li>
            </ul>
        </div>
       
        <!-- Semester 2 tab -->
        <div class="tab-pane fade show" id="tab2" role="tabpanel">
            <div class="listview-title mt-2"><h3>Semester 2</h3></div>
            <ul class="listview image-listview text">

                <li class="multi-level">
                    <a href="#" class="item">
                        <div class="in">
                            <div>Bedah Toraks</div>
                        </div>
                        
                        <div class="icon-box right">
                            <span class="badge badge-success">80</span>
                        </div>
                    </a>
                    <!-- sub menu -->
                    <ul class="listview image-listview">
                        <li>
                            <a href="#" class="item">
                                <div class="icon-box bg-primary">
                                    <ion-icon name="reader-outline"></ion-icon>
                                </div>
                                <div class="in">
                                    Nilai Stase
                                    <span class="badge badge-danger">10</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="item">
                                <div class="icon-box bg-primary">
                                    <ion-icon name="people-outline"></ion-icon>
                                </div>
                                <div class="in">
                                    Nilai Attitude
                                    <span class="badge badge-danger">90</span>
                                </div>
                            </a>
                        </li>
                        
                        <li>
                            <a href="#" class="item">
                                <div class="icon-box bg-primary">
                                    <ion-icon name="people-outline"></ion-icon>
                                </div>
                                <div class="in">
                                    Status Stase 
                                    <div class="chip chip-primary ml-05 mb-05">
                                        <span class="chip-label">Finished</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <!-- * sub menu -->
                </li>

                <li class="multi-level">
                    <a href="#" class="item">
                        <div class="in">
                            <div>Pemeriksaan Klinis</div>
                        </div>
                        
                        <div class="icon-box right">
                            <span class="badge badge-success">70</span>
                        </div>
                    </a>
                    <!-- sub menu -->
                    <ul class="listview image-listview">
                        <li>
                            <a href="#" class="item">
                                <div class="icon-box bg-primary">
                                    <ion-icon name="reader-outline"></ion-icon>
                                </div>
                                <div class="in">
                                    Nilai Stase
                                    <span class="badge badge-danger">10</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="item">
                                <div class="icon-box bg-primary">
                                    <ion-icon name="people-outline"></ion-icon>
                                </div>
                                <div class="in">
                                    Nilai Attitude
                                    <span class="badge badge-danger">90</span>
                                </div>
                            </a>
                        </li>
                        
                        <li>
                            <a href="#" class="item">
                                <div class="icon-box bg-primary">
                                    <ion-icon name="people-outline"></ion-icon>
                                </div>
                                <div class="in">
                                    Status Stase 
                                    <div class="chip chip-warning ml-05 mb-05">
                                        <span class="chip-label">Unfinished</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <!-- * sub menu -->
                </li>
            </ul>
        </div>
        
        <!-- Semester 3 tab -->
        <div class="tab-pane fade show" id="tab3" role="tabpanel">
            <div class="listview-title mt-2"><h3>Semester 3</h3></div>
            <ul class="listview image-listview text">

                <li class="multi-level">
                    <a href="#" class="item">
                        <div class="in">
                            <div>Mikrobiologi</div>
                        </div>
                        
                        <div class="icon-box right">
                            <span class="badge badge-success">80</span>
                        </div>
                    </a>
                    <!-- sub menu -->
                    <ul class="listview image-listview">
                        <li>
                            <a href="#" class="item">
                                <div class="icon-box bg-primary">
                                    <ion-icon name="reader-outline"></ion-icon>
                                </div>
                                <div class="in">
                                    Nilai Stase
                                    <span class="badge badge-danger">10</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="item">
                                <div class="icon-box bg-primary">
                                    <ion-icon name="people-outline"></ion-icon>
                                </div>
                                <div class="in">
                                    Nilai Attitude
                                    <span class="badge badge-danger">90</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="item">
                                <div class="icon-box bg-primary">
                                    <ion-icon name="people-outline"></ion-icon>
                                </div>
                                <div class="in">
                                    Status Stase 
                                    <div class="chip chip-warning ml-05 mb-05">
                                        <span class="chip-label">Unfinished</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <!-- * sub menu -->
                </li>

                <li class="multi-level">
                    <a href="#" class="item">
                        <div class="in">
                            <div>Patologi Anatomi</div>
                        </div>
                        
                        <div class="icon-box right">
                            <span class="badge badge-success">70</span>
                        </div>
                    </a>
                    <!-- sub menu -->
                    <ul class="listview image-listview">
                        <li>
                            <a href="#" class="item">
                                <div class="icon-box bg-primary">
                                    <ion-icon name="reader-outline"></ion-icon>
                                </div>
                                <div class="in">
                                    Nilai Stase
                                    <span class="badge badge-danger">10</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="item">
                                <div class="icon-box bg-primary">
                                    <ion-icon name="people-outline"></ion-icon>
                                </div>
                                <div class="in">
                                    Nilai Attitude
                                    <span class="badge badge-danger">90</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="item">
                                <div class="icon-box bg-primary">
                                    <ion-icon name="people-outline"></ion-icon>
                                </div>
                                <div class="in">
                                    Status Stase 
                                    <div class="chip chip-warning ml-05 mb-05">
                                        <span class="chip-label">Unfinished</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <!-- * sub menu -->
                </li>
            </ul>
        </div>



    </div>
</div>
<!-- * App Capsule -->

@endsection