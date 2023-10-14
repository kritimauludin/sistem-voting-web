@extends('templates.userLayout')
@section('title', 'Polling - RB Vote')
@section('content')
    <main>
        @if (session()->has('success'))
            <script>
                alert(' {{ session('success') }}')
            </script>
        @endif
        <div class="container mt-5">
            <!-- Trending Tittle -->
            <div class="row mb-5">
                <div class="col-lg-5">
                    <div class="about-img" style="overflow:hidden; ">
                        <img src="{{ asset('storage/' . $polling->img_cover_polling) }}" width="300px" alt="">
                    </div>
                </div>
                <div class="col-lg-7 mt-3">
                    <ol class="list-group list-group-numbered mb-2">
                        @foreach ($kandidats as $kandidat)
                            <a href="/polling/kandidat/{{ $kandidat->slug }}" class="text-decoration-none">
                                <li class="list-group-item d-flex justify-content-between align-items-start">
                                    <div class="ms-2 me-auto text-dark">
                                        <div class="badge badge-danger mb-2">Kandidat {{ $kandidat->chapter }}</div>
                                        <h5>"{{ $kandidat->title_kandidat }}"</h5>
                                    </div>
                                    <span
                                        class="badge bg-info mt-3 text-white rounded-pill">{{ date('d M Y', strtotime($kandidat->created_at)) }}</span>

                                </li>
                            </a>
                        @endforeach
                        <canvas id="graph"></canvas>
                        <script>
                            <?php
                            foreach ($kandidats as $kandidat) {
                                $nama[] = $kandidat->title_kandidat;
                                $color[] = 'rgba(' . rand(0, 255) . ', ' . rand(0, 255) . ', ' . rand(0, 255) . ', 0.5)';
                            }
                            $kandidats_convert = json_encode($nama);
                            $vote_convert = json_encode($voteKandidat);
                            $color_convert = json_encode($color);

                            echo 'var kandidat = ' . $kandidats_convert . ";\n";
                            echo 'var voteKandidat = ' . $vote_convert . ";\n";
                            echo 'var color = ' . $color_convert . ";\n";
                            ?>

                            var ctx = document.getElementById("graph").getContext("2d");
                            // tampilan chart
                            var piechart = new Chart(ctx, {
                                type: 'pie',
                                data: {

                                    // label nama setiap Value
                                    labels: kandidat,
                                    datasets: [{
                                        // Jumlah Value yang ditampilkan
                                        data: voteKandidat,

                                        backgroundColor: color
                                    }],
                                }
                            });
                        </script>

                    </ol>
                    <!--Start pagination -->
                    <nav aria-label="Page navigation example ">
                        <ul class="pagination justify-content-start">
                            {{ $kandidats->links() }}
                        </ul>
                    </nav>
                    <!-- End pagination  -->
                </div>
            </div>
        </div>
    </main>

@endsection
