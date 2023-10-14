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
            <h6 class="m-0 font-weight-bold text-dark d-inline">Vote </h6>
            <a href="/mypolling/pollings/create" class="float-right"><i class="fas fa-fw fa-plus"></i></a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Polling</th>
                            <th>Total Kandidat</th>
                            <th>Reader</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>#</th>
                            <th>Polling</th>
                            <th>Total Kandidat</th>
                            <th>Reader</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        @foreach($pollings as $polling)
                        <tr>
                            <th>{{$loop->iteration}}</th>
                            <th>{{$polling->title_polling}}</th>
                            <th>{{count($polling->kandidat)}}</th>
                            <th>{{$readers[$loop->iteration-1]}}</th>
                            <th>
                                @if($polling->status == 1)
                                <span class="badge badge-success">Diterbitkan</span>
                                @else
                                <span class="badge badge-info">Ditinjau</span>
                                @endif
                            </th>
                            <th>
                                <a href="/mypolling/pollings/{{$polling->slug}}" class=""><i class="fas fa-fw fa-book-reader text-info"></i></a>
                                <a href="/mypolling/pollings/{{$polling->slug}}/edit" class=""><i class="fas fa-fw fa-edit text-warning"></i></a>
                                <form action="/mypolling/pollings/{{$polling->slug}}" method="POST" class="d-inline">
                                    @method('DELETE')
                                    @csrf
                                    <button class="border-0 bg-transparant" style="background-color: transparent;" onclick="return confirm('Delete this book ?');"><i class="fas fa-fw fa-trash-alt text-danger"></i></button>
                                </form>
                                <a href="/mypolling/kandidat/create?polling={{$polling->slug}}"><i class="fas fa-plus-circle"></i></a>
                            </th>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection
