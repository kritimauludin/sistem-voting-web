<!doctype html>
<html class="no-js" lang="zxx">

<head>


    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>@yield('title')</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-icon" href="{{asset('template')}}/img/news/favicon.webp">

    <link rel="shortcut icon" type="image/x-icon" href="{{asset('storage')}}/img/web-RBVote/preload/icon.svg">

    <link rel="stylesheet" href="{{asset('template')}}/css/bootstrap.min.css" >
    <link rel="stylesheet" href="{{asset('template')}}/css/animate.min.css">
    <link rel="stylesheet" href="{{asset('template')}}/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="{{asset('template')}}/css/slick.css">
    <script src="{{asset('template')}}/js/Chart.js"></script>
    <link rel="stylesheet" href="{{asset('template')}}/css/style.css?version={{ filemtime(public_path('template/css/style.css')) }}">
    <script src="https://code.jquery.com/jquery-1.11.3.min.js" crossorigin="anonymous"></script>
</head>

<body>
    <!-- Preloader Start -->
    {{-- <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
            </div>
        </div>
    </div> --}}
    <!-- Preloader Start -->

    @include('templates.userHeader')

    @yield('content')

    @include('templates.userFooter')

    @stack('scripts')
</body>

</html>
