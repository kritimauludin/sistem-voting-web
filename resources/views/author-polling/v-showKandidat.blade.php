@extends('templates.adminLayout')

@section('title', '[RB Vote - Read ]')

@section('content')
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Trending Tittle -->
    <div class="card-shadow mb-5">
        <div class="col-lg-7">
            <div class="about-img" style="max-height: 350px; overflow:hidden;">
                <img src="{{asset('storage/'.$kandidat->img_kandidat)}}" height="500px" alt="">
            </div>
            <div class="row mt-3 ml-2">
                <a href="/mypolling/pollings/{{$polling[0]->slug}}" class="btn btn-success mr-2"><i class="fas fa-fw fa-arrow-left"></i> Back to all</a>
                <a href="/mypolling/kandidat/{{$kandidat->slug}}/edit" class="btn btn-warning mr-2"><i class="fas fa-fw fa-edit"></i></a>
                <form action="/mypolling/kandidat/{{$kandidat->slug}}" method="POST" class="d-inline">
                    @method('DELETE')
                    @csrf
                    <button class="btn btn-danger" onclick="return confirm('Delete this chapter ?');"><i class="fas fa-fw fa-trash-alt"></i></button>
                </form>
            </div>
            <div class="mb-10 pt-20">

            </div>
            <div class="heading-news mb-30 pt-30">
                <h3>{{ $kandidat->title_kandidat}}</h3>
                <h6>- {{ $kandidat->created_at }}</h6>
            </div>
            <div class="about-prea">
                {!! $kandidat->body !!}
            </div>
        </div>
    </div>
</div>
@endsection
