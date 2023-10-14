<!-- Sidebar -->
<ul class="navbar-nav bg-black sidebar sidebar-dark accordion sidebar-toggled toggled" id="accordionSidebar">
    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/user">
        <img src="{{asset('storage')}}/img/web-arahin/page/logo-RW-P.png" width="50px" alt="">
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item {{ Request::is('user*') ? ' active ' : ' '}}">
        <a class="nav-link" href="/user">
            <i class="fas fa-fw fa-home"></i>
            <span>My Home</span></a>
    </li>
    @can('founder')
    <!-- Divider -->
    <hr class="sidebar-divider">
    <!-- Heading -->
    <div class="sidebar-heading">
        Founder
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item {{ Request::is('founder/user*') ? ' active ' : ' '}}">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseWriter" aria-expanded="true" aria-controls="collapseWriter">
            <i class="fas fa-fw fa-users"></i>
            <span>Data Pengguna</span>
        </a>
        <div id="collapseWriter" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Akun Terdaftar :</h6>
                <a class="collapse-item" href="/founder/user/alluser">Lihat Semua User</a>
            </div>
        </div>
    </li>
    @endcan


    <!-- Divider -->
    <hr class="sidebar-divider">
    <!-- Heading -->
    <div class="sidebar-heading">
        Penulis
    </div>

    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item {{Request::is('mypolling/pollings*') ? 'active' : ''}}">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBooks" aria-expanded="true" aria-controls="collapseBooks">
            <i class="fas fa-fw fa-book"></i>
            <span>Daftar Pooling</span>
        </a>
        <div id="collapseBooks" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Data Menu:</h6>
                <a class="collapse-item" href="/mypolling/pollings">Lihat Data</a>
                <a class="collapse-item" href="/mypolling/pollings/realtime-data">Realtime Voters</a>
                <a class="collapse-item" href="/mypolling/pollings/create">Buat Pooling Baru</a>
            </div>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">
    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>


</ul>
<!-- End of Sidebar -->
