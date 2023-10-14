@extends('templates.adminLayout')

@section('title', '[Rb Vote - Show]')

@section('content')
<!-- Begin Page Content -->
<div class="container-fluid">

    @if(session()->has('success'))
    <div class="alert alert-success" role="alert">
        {{session('success')}}
    </div>
    @endif
    <!-- Tabel -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-dark d-inline">Realtime Vote</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Polling</th>
                            <th>Kandidat Dipilih</th>
                            <th>Username Voters</th>
                            <th>Email Voters</th>
                            <th>Tgl. Vote</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>#</th>
                            <th>Polling</th>
                            <th>Kandidat Dipilih</th>
                            <th>Username Voters</th>
                            <th>Email Voters</th>
                            <th>Tgl. Vote</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        @foreach($realtimeData as $data)
                        <tr>
                            <th>{{$loop->iteration}}</th>
                            <th>{{$data['title_polling']}}</th>
                            <th>{{$data['title_kandidat']}}</th>
                            <th>{{$data['username']}}</th>
                            <th>{{$data['email']}}</th>
                            <th>{{$data['created_at']}}</th>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection

<script>
    setTimeout(function() {
        location.reload();
    }, 10000);
</script>
