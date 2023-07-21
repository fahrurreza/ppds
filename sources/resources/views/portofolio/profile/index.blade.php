@extends('layouts.app')

@section('content')

<div id="appCapsule">
    <form method="post" action="{{route('update-profile')}}" enctype="multipart/form-data">
        @csrf
        <div class="section mt-2">
            <div class="profile-head">
                <div class="avatar">
                    @if($data['profile']->photo <> "")
                          <img src="{{asset('assets/img/profile/'.$data['profile']->photo)}}" alt="avatar" class="imaged w140 rounded" id="gambar">
                    @else
                        <img src="https://img.freepik.com/premium-vector/doctor-icon-avatar-white_136162-58.jpg" alt="avatar" class="imaged w140 rounded" id="gambar">
                    @endif
                </div>
                <div class="in">
                    <h3 class="name">{{$data['profile']->username}}</h3>
                    <h5 class="subtext">
                        <input type="file" name="photo" id="file" accept="image/*" style="display: none;">
                        <button type="button" class="btn btn-sm btn-dribbble" id="pilih">
                            <ion-icon name="camera" role="img" class="md hydrated" aria-label="logo dribbble">
                            </ion-icon>
                            Photo
                        </button>
                    </h5>
                </div>
            </div>
        </div>

        <div class="section full mt-2 mb-2">

            <div class="wide-block pt-2 pb-2">

                <div class="form-group boxed">
                    <div class="input-wrapper">
                        <label class="label" for="name">Name</label>
                        <input type="text" class="form-control" id="name" name="user_name" value="{{$data['profile']->user_name}}" required>
                        <i class="clear-input">
                            <ion-icon name="close-circle"></ion-icon>
                        </i>
                        <div class="valid-feedback">Looks good!</div>
                        <div class="invalid-feedback">Please enter your name.</div>
                    </div>
                </div>

                <div class="form-group boxed">
                    <div class="input-wrapper">
                        <label class="label" for="email">E-mail</label>
                        <input type="email" class="form-control" id="email" name="email" value="{{$data['profile']->email}}" required>
                        <i class="clear-input">
                            <ion-icon name="close-circle"></ion-icon>
                        </i>
                        <div class="valid-feedback">Looks good!</div>
                        <div class="invalid-feedback">Please enter a valid e-mail.</div>
                    </div>
                </div>

                <div class="form-group boxed">
                    <div class="input-wrapper">
                        <label class="label" for="phone">Phone </label>
                        <input type="text" class="form-control" id="phone" name="phone" value="{{$data['profile']->phone}}" required>
                        <i class="clear-input">
                            <ion-icon name="close-circle"></ion-icon>
                        </i>
                        <div class="valid-feedback">Looks good!</div>
                        <div class="invalid-feedback">Please enter your name.</div>
                    </div>
                </div>

                @if($data['profile']->gender == 1)
                <div class=" mt-1 text-left">
                    <div class="custom-control custom-radio mb-1">
                        <input type="radio" id="customRadio1" name="gender" class="custom-control-input" value="1" checked="checked" >
                        <label class="custom-control-label" for="customRadio1">Male</label>
                    </div>
                    <div class="custom-control custom-radio mb-1">
                        <input type="radio" id="customRadio2" name="gender" class="custom-control-input" value="2">
                        <label class="custom-control-label" for="customRadio2">Female</label>
                    </div>
                </div>
                @else
                    <div class=" mt-1 text-left">
                    <div class="custom-control custom-radio mb-1">
                        <input type="radio" id="customRadio1" name="gender" class="custom-control-input" value="1" >
                        <label class="custom-control-label" for="customRadio1">Male</label>
                    </div>
                    <div class="custom-control custom-radio mb-1">
                        <input type="radio" id="customRadio2" name="gender" class="custom-control-input" value="2" checked="checked" >
                        <label class="custom-control-label" for="customRadio2">Female</label>
                    </div>
                </div>
                @endif
                <div class="form-group boxed">
                    <div class="input-wrapper">
                        <input type="password" class="form-control" id="password1" placeholder="PASSWORD"
                            name="password">
                        <i class="clear-input">
                            <ion-icon name="close-circle"></ion-icon>
                        </i>
                    </div>
                </div>
                <div class="mt-2">
                    <button class="btn btn-primary btn-block" type="submit">Save</button>
                </div>
            </div>
        </div>
    </form>
    <div class="section mt-2 mb-2">
        <div class="mt-2">
            <a class="btn btn-warning btn-block" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Logout</a>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                @csrf
            </form>
        </div>
    </div>
</div>

    @push('custom-scripts')
    <script src="{{asset('assets/js/profile.js')}}"></script>
    @endpush

@endsection