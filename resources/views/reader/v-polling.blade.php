@extends('templates.userLayout')
@section('title', 'RB Vote - Polling')
@section('content')
    @if (isset($pollings[0]))
        <main>
            @if (session()->has('success'))
                <script>
                    alert(' {{ session('success') }}')
                </script>
            @endif
            <div class="container-fluid m-5 p2">
                <!--image row start-->
                <div class="row">
                    @foreach ($pollings as $polling)
                        <!--image card start-->
                        <div class="image-category col-lg-2">
                            <img src="{{ asset('storage/' . $polling->img_cover_polling) }}" width="100%" alt="">
                            <div class="details">
                                <h2>{{ $polling->title_polling }}</h2>
                                <div class="more">
                                    <a href="/polling/{{ $polling->slug }}?searchPolling=polling" class="read-more">ReadMore</a>
                                    <div class="icon-links">
                                        <a href="#" onclick="return alert(`{{ $polling->excerpt_polling }}`);"><i
                                                class="fas fa-eye"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </main>
    @else
        <h1 class="m-5">Nothing New In RB Vote</h1>
    @endif
@endsection
