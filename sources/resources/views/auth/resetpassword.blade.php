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


    <!-- App Capsule -->
    <div id="appCapsule" class="pt-0">

        <div class="login-form mt-1">
            <div class="section">
                <img src="{{asset('assets/img/sample/photo/vector4.png')}}" alt="image" class="form-image">
            </div>
            <div class="section mt-1">
                <h1>FAKULTAS KEDOKTERAN</h1>
                <h4>DEPARTEMEN PULMOLOGI DAN KEDOKTERAN RESPIRASI</h4>
            </div>
            <div class="section mt-1 mb-5">
                <form action="{{route('post-reset-password')}}" method="post">
                    @csrf
                    <div class="form-group boxed">
                        <div class="input-wrapper">
                            <input type="email" class="form-control"  name='email' placeholder="Email">
                            <i class="clear-input">
                                <ion-icon name="close-circle"></ion-icon>
                            </i>
                        </div>
                    </div>

                    <div class="form-links mt-2">
                        <div>
                            <a href="{{route('login')}}">Login</a>
                        </div>
                        <!-- <div><a href="page-forgot-password.php" class="text-muted">Forgot Password?</a></div> -->
                    </div>

                    <div class="form-button-group">
                        <button type="submit" id="login" class="btn btn-primary btn-block btn-lg">Submit</button>
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
    <script type="module" src="https://unpkg.com/ionicons@5.0.0/dist/ionicons/ionicons.js')}}"></script>
    <!-- Owl Carousel -->
    <script src="{{asset('assets/js/plugins/owl-carousel/owl.carousel.min.js')}}"></script>
    <!-- jQuery Circle Progress -->
    <script src="{{asset('assets/js/plugins/jquery-circle-progress/circle-progress.min.js')}}"></script>
    <!-- Base Js File -->
    <script src="{{asset('assets/js/base.js')}}"></script>
    
    <script>
    setTimeout(() => {
        notification('notification-1', 10000);
    }, 2000);
    </script>

</body>

</html>