<header>
    <!-- Header Start -->
    <div class="header-area">
        <div class="main-header ">
            <div class="header-mid arahin-bg">
                <div class="container">
                    <div class="row d-flex align-items-center">
                        <!-- Logo -->
                        <div class="col-lg-12">
                            <div class="logo text-center">
                                <a href="/"><img src="{{asset('template')}}/img/news/logo.png" width="300px" alt=""></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-bottom header-sticky">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-xl-12 col-lg-12 col-md-12 header-flex">
                            <!-- sticky -->
                            <div class="sticky-logo">
                                <div class="row">
                                    <div class="col-sm-12 text-center">
                                        <a href="/"><img src="{{asset('storage')}}/img/web-arahin/page/logo-RB-L.png" width="150px" alt=""></a>
                                    </div>

                                </div>
                            </div>
                            <!-- Main-menu -->
                            <div class="scroll-card scroll-z-depth">
                                <div class="scroll-tabs scroll-tabs-bg" scroll="true">
                                    <ul class="nav nav-tabs header-bottom-width" role="tablist">
                                        <li class="{{ Request::is('/') ? 'active' : ' ' }} ml-10"><a href="/" data-toogle="tab">Home</a></li>
                                        <li class="{{ Request::is('polling*') ? 'active' : ' ' }}"><a href="/polling?searchPolling=polling" data-toogle="tab">Voting</a></li>
                                        @if (Auth::check())
                                            <li class="{{ Request::is('polling*') ? 'active' : ' ' }}"><a href="{{ route('logout') }}" data-toogle="tab" onclick="event.preventDefault();
                                                document.getElementById('logout-form').submit();">Logout</a></li>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                            @csrf
                                        </form>
                                        @else
                                            <li class="{{ Request::is('login*') ? 'active' : ' ' }} "><a href="/login" data-toogle="tab"><i class="fa fa-sign-in-alt"></i></a></li>
                                        @endif
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">

            </div>
        </div>
        <!-- Header End -->
        <script type="text/javascript" language="javascript" src="{{asset('template')}}/js/tab-scrollable.js"></script>
</header>
