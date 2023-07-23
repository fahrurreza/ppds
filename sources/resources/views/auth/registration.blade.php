<!doctype html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport"
        content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="theme-color" content="#000000">
    <title>LOGBOOK</title>
    <meta name="description" content="Mobilekit HTML Mobile UI Kit">
    <meta name="keywords" content="bootstrap 4, mobile template, cordova, phonegap, mobile, html" />
    <link rel="icon" type="image/png" href="{{asset('assets/img/favicon.png')}}" sizes="32x32">
    <link rel="apple-touch-icon" sizes="180x180" href="{{asset('assets/img/icon/192x192.png')}}">
    <link rel="stylesheet" href="{{asset('assets/css/style.css')}}">
    <link rel="manifest" href="__manifest.json">
</head>

<body class="bg-white">

    <!-- loader -->
    <div id="loader">
        <div class="spinner-border text-primary" role="status"></div>
    </div>
    <!-- * loader -->

    <!-- App Header -->
    <div class="appHeader no-border transparent position-absolute">
        <div class="left">
            <a href="javascript:;" class="headerButton goBack">
                <ion-icon name="chevron-back-outline"></ion-icon>
            </a>
        </div>
        <div class="pageTitle"></div>
        <div class="right">
            <a href="{{route('login')}}" class="headerButton">
                Login
            </a>
        </div>
    </div>
    <!-- * App Header -->

    <!-- App Capsule -->
    <div id="appCapsule">

        <div class="login-form">
            <div class="section">
                <img src="{{asset('assets/img/sample/photo/vector4.png')}}" alt="image" class="imaged w100">
                <h1>Register</h1>
                <h4>Fill the form to join us</h4>
            </div>
            <div class="section mt-2 mb-5">
                <form action="{{route('registration')}}" method="POST" enctype='multipart/form-data'>
                    @csrf
                    
                    <div class="form-group boxed">
                        <div class="input-wrapper">
                            <input type="text" class="form-control" id="name1" placeholder="FULL NAME"
                                style="text-transform:uppercase" name="user_name" value="{{old('user_name')}}" required>
                            <i class="clear-input">
                                <ion-icon name="close-circle"></ion-icon>
                            </i>
                        </div>
                    </div>

                    <div class="form-group boxed">
                        <div class="input-wrapper">
                            <select class="form-control custom-select" name="gender" id="gender" required>
                                <option value="">Gender</option>
                                <option value="1">Male</option>
                                <option value="2">Female</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group boxed">
                        <div class="input-wrapper">
                            <input type="number" class="form-control" placeholder="PHONE" name="phone" value="{{old('phone')}}" required>
                            <i class="clear-input">
                                <ion-icon name="close-circle"></ion-icon>
                            </i>
                            @error('phone')
                            <div class="text-danger" style="text-align:left">Nomor telah digunakan</div>
                            @enderror
                        </div>
                    </div>
                    <div class="form-group boxed">
                        <div class="input-wrapper">
                            <input type="email" class="form-control" id="email1" placeholder="EMAIL ADDRESS"
                                name="email" value="{{old('email')}}" required>
                            <i class="clear-input">
                                <ion-icon name="close-circle"></ion-icon>
                            </i>
                            @error('email')
                            <div class="text-danger" style="text-align:left">Email telah digunakan</div>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group boxed">
                        <div class="input-wrapper">
                            <input type="password" class="form-control" id="password1" placeholder="PASSWORD"
                                name="password" required>
                            <i class="clear-input">
                                <ion-icon name="close-circle"></ion-icon>
                            </i>
                            @error('password')
                            <div class="text-danger" style="text-align:left">Password minimal 6 character</div>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group boxed">
                        <div class="input-wrapper">
                            <input type="password" class="form-control" id="password2" name="password2"
                                placeholder="PASSWORD (AGAIN)" required>
                            <i class="clear-input">
                                <ion-icon name="close-circle"></ion-icon>
                            </i>
                            @error('password2')
                            <div class="text-danger" style="text-align:left">Password tidak sama</div>
                            @enderror
                        </div>
                    </div>

                    <div class=" mt-1 text-left">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customChecka1" required>
                            <label class="custom-control-label text-muted" for="customChecka1">I Agree <a
                                    href="javascript:;">Terms & Conditions</a></label>
                        </div>

                    </div>

                    <div class="form-button-group">
                        <button type="submit" name="submit" class="btn btn-primary btn-block btn-lg">Register</button>
                    </div>

                </form>
            </div>
        </div>

    </div>
    <!-- * App Capsule -->

    <!-- ///////////// Js Files ////////////////////  -->
    <!-- Jquery -->
    <script src="{{asset('assets/js/lib/jquery-3.4.1.min.js')}}"></script>
    <!-- Bootstrap-->
    <script src="{{asset('assets/js/lib/popper.min.js')}}"></script>
    <script src="{{asset('assets/js/lib/bootstrap.min.js')}}"></script>
    <!-- Ionicons -->
    <script type="module" src="https://unpkg.com/ionicons@5.0.0/dist/ionicons/ionicons.js"></script>
    <!-- Owl Carousel -->
    <script src="{{asset('assets/js/plugins/owl-carousel/owl.carousel.min.js')}}"></script>
    <!-- jQuery Circle Progress -->
    <script src="{{asset('assets/js/plugins/jquery-circle-progress/circle-progress.min.js')}}"></script>
    <!-- Base Js File -->
    <script src="{{asset('assets/js/base.js')}}"></script>


    <script>
    setTimeout(() => {
        notification('notification-6', 5000);
    }, 2000);
    </script>
</body>

</html>