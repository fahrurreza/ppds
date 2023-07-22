@extends('layouts.app')

@section('content')

@push('custom-style')
<link rel="stylesheet" href="https://cdn.datatables.net/rowreorder/1.3.3/css/rowReorder.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
@endpush
<!-- css push -->


<!-- Content Start -->
<div id="appCapsule">


    <div class="section full mb-2">
        <div class="section-title"></div>
        <ul class="listview link-listview mb-2">
            <li class="multi-level">
                <a href="#" class="item" style="text-align: grid;">
                    <div class="alert alert-outline-primary" role="alert">
                        Serach Bar 
            <ion-icon name="search"></ion-icon>
                    </div>
                </a>
                <!-- sub menu -->
                <ul class="listview simple-listview">
                
                    
        <div class="section mb-2 mt-2 full">
            <div class="wide-block pt-2 pb-2">
                    <div class="form-group boxed">
                        <div class="input-wrapper">
                            <label class="label" for="trx_id">ID Transaction </label>
                            <input type="text" class="form-control" id="trx_id"name="trx_id">
                            <i class="clear-input">
                                <ion-icon name="close-circle"></ion-icon>
                            </i>
                            <div class="valid-feedback">Looks good!</div>
                            <div class="invalid-feedback">Please enter your name.</div>
                        </div>
                    </div>
                
                
                    <div class="form-group boxed">
                        <div class="input-wrapper">
                            <label class="label" for="periode">Date </label>
                            <input type="date" class="form-control" id="periode" name="periode">
                            <i class="clear-input">
                                <ion-icon name="close-circle"></ion-icon>
                            </i>
                            <div class="valid-feedback">Looks good!</div>
                            <div class="invalid-feedback">Please enter your name.</div>
                        </div>
                    </div>
                
                
                
                    <div class="form-group boxed">
                        <div class="input-wrapper">
                        <label class="label" for="status">Status </label>
                        <select class="form-control custom-select" id="status" name="status">
                            <option value="">Pilih Status</option>
                            <option value="1">Active</option>
                            <option value="2">Revision</option>
                            <option value="3">Verified</option>
                            <option value="4">Approved</option>
                            <option value="5">Deleted</option>
                        </select>
                        </div>
                    </div>

                    
                    <input type="hidden" id="ppds_id" value="{{Auth::user()->id}}">
                    
                    <button type="button" id="post" class="btn btn-outline-primary shadowed mr-1 mb-1">Search</button></li>
                    
                    </div>
                    </div>
                </ul>
                <!-- * sub menu -->
            </li>
        </ul>

        <div class="wide-block p-0">

            <div class="table-responsive">
                <table class="table table-striped display" id="example">
                    <thead>
                        <tr>
                            <th scope="col">Trx No</th>
                            <th scope="col">Date-Time</th>
                            <th scope="col">Status</th>
                        </tr>
                    </thead>
                    <tbody id="dataTable">
                        @foreach($data['portofolio'] as $list)
                        <tr>
                            <td>
                                @if($list->status == 1)
                                <a class="btn btn-sm btn-text-warning shadowed mr-1 mb-1" href="{{url('detail-portofolio/'.$list->trx_id)}}">{{$list->trx_id}}</a>
                                @elseif($list->status == 2)
                                <a class="btn btn-sm btn-text-danger shadowed mr-1 mb-1" href="{{url('detail-portofolio/'.$list->trx_id)}}">{{$list->trx_id}}</a>
                                @elseif($list->status == 3)
                                <a cclass="btn btn-sm btn-text-success shadowed mr-1 mb-1" href="{{url('detail-portofolio/'.$list->trx_id)}}">{{$list->trx_id}}</a>
                                @elseif($list->status == 4)
                                <a class="btn btn-sm btn-text-primary shadowed mr-1 mb-1" href="{{url('detail-portofolio/'.$list->trx_id)}}">{{$list->trx_id}}</a>
                                @else
                                <a class="btn btn-sm btn-text-info shadowed mr-1 mb-1" href="{{url('detail-portofolio/'.$list->trx_id)}}">{{$list->trx_id}}</a>
                                @endif
                            </td>
                            <td>{{$list->create_date}}</td>
                            <td>
                                @if($list->status == 1)
                                <span class="badge badge-warning">Act</span>
                                @elseif($list->status == 2)
                                <span class="badge badge-danger">Rev</span>
                                @elseif($list->status == 3)
                                <span class="badge badge-success">Ver</span>
                                @elseif($list->status == 4)
                                <span class="badge badge-primary">Apr</span>
                                @else
                                <span class="badge badge-info">Del</span>
                                @endif
                            </td>
                        </tr>
                        @endforeach
                    </tbody>

                    <tfoot>
                        <tr>
                            <th scope="col">Trx No</th>
                            <th scope="col">Date-Time</th>
                            <th scope="col">Status</th>
                        </tr>
                    </tfoot>
                </table>
            </div>

        </div>
    </div>
  


</div>
<!-- Content End -->


<!-- javascript push -->
@push('custom-scripts')
<script>
    document.addEventListener("DOMContentLoaded", function(event) {
        // Element toast
        var toast = document.getElementById("toast-3");

        // Tampilkan toast
        toast.style.display = "block";

        // Tangani tombol close
        var closeButton = toast.querySelector(".close-button");
        closeButton.addEventListener("click", function() {
            // Sembunyikan toast saat tombol close diklik
            toast.style.display = "none";
        });
    });

    var postButton = document.getElementById("post");
    postButton.addEventListener("click", function() {
        var trx_id = document.getElementById("trx_id").value;
        var periode = document.getElementById("periode").value;
        var status = $('#status').find(":selected").val();
        let ppds_id = document.getElementById("ppds_id").value;

        $.ajax({
            type : 'post',
            headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            url : '{{URL::to('filter-portofolio')}}',
            data:{'trx_id':trx_id, 'periode' : periode, 'status' : status, 'ppds_id' : ppds_id},
          success:function(response){
            console.log(response)
            document.getElementById("dataTable").innerHTML = response;
          }
        });

    });
</script>

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>

<script src="https://cdn.datatables.net/rowreorder/1.3.3/js/dataTables.rowReorder.min.js"></script>

<script src="https://cdn.datatables.net/responsive/2.4.1/js/dataTables.responsive.min.js"></script>

@endpush

@endsection