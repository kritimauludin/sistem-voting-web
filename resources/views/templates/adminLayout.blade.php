<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Ads -->
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-7326678056847065"
      crossorigin="anonymous"></script>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="google-site-verification" content="hQarpD7Sl51t8JbSbwvKvmoRu8V6NfjqbnLaKJxVcfE" />
  	<meta name="description" content="Website For Creator Digital, Everyone can Write and be Creative" />
    <title>RB Vote</title>

    <link rel="shortcut icon" type="image/x-icon" href="{{asset('storage')}}/img/web-arahin/preload/icon.svg">

    <!-- Custom fonts for this template-->
    <link href="{{asset('template')}}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="{{asset('template')}}/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="{{asset('template')}}/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <style> .bg-black{background-color: black} .bg-red{background-color: red}</style>

</head>


<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">
        @include('templates.adminSidebar')

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                @include('templates.adminNavbar')
                <!-- End of Topbar -->

                @yield('content')

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Rb VOTE 2022</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <!-- Bootstrap core JavaScript-->
    <script src="{{asset('template')}}/vendor/jquery/jquery.min.js"></script>
    <script src="{{asset('template')}}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="{{asset('template')}}/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="{{asset('template')}}/js/sb-admin-2.min.js"></script>


    <!-- Page level plugins -->
    <script src="{{asset('template')}}/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="{{asset('template')}}/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="{{asset('template')}}/js/demo/datatables-demo.js"></script>

    @stack('scripts')
</body>

</html>
