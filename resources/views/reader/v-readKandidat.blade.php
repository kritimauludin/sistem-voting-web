@extends('templates.userLayout')
@section('title', '' .$kandidat->title_kandidat . '')
@section('content')
    <main>
        <style>
            img {
                width: 50% !important;
            }
        </style>
        @if (session()->has('success'))
            <script>
                alert(' {{ session('success') }}')
            </script>
        @endif
        <!-- About US Start -->
        <div class="about-area2 gray-bg pt-60 pb-60">
            <div class="container">
                <div class="row">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-10">
                        <div class="about-right mb-90">
                            <div class="text-center about-img">
                                <img src="{{ asset('storage/' .$kandidat->img_kandidat) }}" alt="">
                                <div class="mt-4">
                                    <a href="/polling/{{$kandidat->polling->slug }}" class="btn btn-primary">Back</a>
                                </div>
                            </div>

                            <div class="heading-news mb-30 pt-30">
                                <h3>{{$kandidat->title_kandidat }}</h3>
                                <h6 class="d-inline">Last Update - </h6><span class="badge badge-info ">
                                    {{ date('j F Y | G.i', strtotime($kandidat->updated_at)) }} </span>
                            </div>
                            <div class="about-prea text-justify">

                                {!!$kandidat->body !!}
                            </div>

                            <div class="rounded border border-color-dark p-3 text-center">
                                <div class="row">
                                    <div class="col-lg-4">
                                        @if ($previousChapter != false)
                                            <a href="/polling/kandidat/{{ $previousChapter->slug }}"
                                                class="btn btn-dark btn-sm rounded float-left">Previous</a>
                                        @endif
                                    </div>
                                    <div class="col-lg-4">
                                        @if (Auth::check())
                                            @if (Auth::user()->role_id == 5 && $voted)
                                                <a href="/vote?user_id={{ Auth::user()->id }}&post_id={{$kandidat->id }}&polling_id={{$kandidat->polling_id }}&slug_polling={{$kandidat->polling->slug }}"
                                                    class="btn btn-danger">Vote</a>
                                            @elseif($voted == false)
                                                <a href="javascript:void(0)" class="btn btn-danger">Suara Anda Tersimpan</a>
                                            @else
                                                 <a href="javascript:void(0)" class="btn btn-danger">Admin Tidak Diizinkan</a>
                                            @endif
                                        @else
                                            <a href="/login" class="btn btn-danger">Login untuk Vote</a>
                                        @endif
                                    </div>
                                    <div class="col-lg-4">
                                        @if ($nextChapter != false)
                                            <a href="/polling/kandidat/{{ $nextChapter->slug }}"
                                                class="btn btn-dark btn-sm rounded float-right">Next</a>
                                        @endif
                                    </div>
                                </div>
                            </div>
                            <hr>
                        </div>
                    </div>
                    <!-- About US End -->
    </main>
@endsection
