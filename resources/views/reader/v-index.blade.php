@extends('templates.userLayout')
@section('title', 'Homepage - RB Vote')
@section('content')

    <main>
        <section id="hero" class="hero d-flex align-items-center">
            <div class="container">
                <div class="jumbotron jumbotron-fluid justify-content-center m-5 p-5 bg-gradient-danger" style="border-radius: 50px;">
                    <div class="container text-center">
                      <h1 class="display-4">Selamat Datang di Polling Radar Bogor</h1>
                      <p  data-aos="fade-up" data-aos-delay="100" class="lead">Kami selalu menyediakan polling menarik untuk diikuti,
                        berikut polling terbaru kami, dan nantikan poling menarik lainnya.</p>
                    </div>
                </div>
                <!-- End Stats Item -->
                <section id="about" class="about pt-0">
                    <div class="container" data-aos="fade-up">

                        <div class="row gy-4">
                            <div class="col-lg-5 content mt-5 p-5 text-justify">
                                <h3>Cara Melakukan E-Voting</h3>
                                <p>
                                    Berikut Cara untuk melakukan E-Voting untuk pemilihan Pilpres dan Pilkada
                                </p>
                                <ul>
                                    <li data-aos="fade-up" data-aos-delay="100">
                                        <i class="bi bi-diagram-3"></i>
                                        <div>
                                            <h5>Pastikan anda sudah melakukan Login menggunakan akun Google</h5>
                                            <p>E-Voting ini berlaku 1 kali untuk 1 akun. Jadi pastikan anda sudah memilih
                                                pilihan yang tepat.</p>
                                        </div>
                                    </li>
                                    <li data-aos="fade-up" data-aos-delay="200">
                                        <i class="bi bi-fullscreen-exit"></i>
                                        <div>
                                            <h5>Perhatikan kandidat yang akan anda pilih </h5>
                                            <p>Pastikan anda sudah membaca biografi dari beberapa kandidat yang ada, karna
                                                pilihan anda akan berpengaruh.</p>
                                        </div>
                                    </li>
                                    <li data-aos="fade-up" data-aos-delay="300">
                                        <i class="bi bi-broadcast"></i>
                                        <div>
                                            <h5>Lalu tekan button 'Vote'</h5>
                                            <p>Pada akhir halaman yang ada pada kandidat, disana terdapat Button "Vote" dan
                                                silahkan anda melakukan voting dihalaman tersebut</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-7 position-relative align-self-star">
                                <h1 class="text-center">Tutorial Melakukan E-Voting</h1>
                                <p  class="text-center">Disini adalah Tutorial untuk Melakukan E-Voting dengan video</p>
                                <iframe width="100%" height="500px" src="https://www.youtube.com/embed/n6-E8Vu2HJ0"
                                    frameborder="0" allowfullscreen style="border-radius: 50px"></iframe>
                            </div>
                        </div>

                    </div>
                </section>

                <div class="accordion m-5" id="accordionExample">
                    <div class="card">
                        <div class="card-header" id="headingOne">
                            <h2 class="mb-0">
                                <button class="btn btn-link" type="button" data-toggle="collapse"
                                    data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    1. Bagaimana cara menggunakan Aplikasi E-voting ini?
                                </button>
                            </h2>
                        </div>

                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                Caranya cukup mudah, Para Pengguna hanya perlu Login untuk dapat melakukan vote. Perlu
                                diingat untuk 1 user hanya dapat melakukan 1 kali Voting
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingTwo">
                            <h2 class="mb-0">
                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse"
                                    data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    2. Apakah E-Voting ini dapat digunakan seterusnya?
                                </button>
                            </h2>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                            <div class="card-body">
                                Bisa, Karna aplikasi E-Voting ini tidak terbatas pada satu polling
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingThree">
                            <h2 class="mb-0">
                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse"
                                    data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    3. Apa Itu Aplikasi E-Voting?
                                </button>
                            </h2>
                        </div>
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                            data-parent="#accordionExample">
                            <div class="card-body">
                                E-Voting adalah aplikasi yang dibuat oleh Radar Bogor untuk memudahkan pemungutan suara
                                secara lebih sederhana. Selain itu dapat digunakan berulang kali untuk Pemilu dan Pilkada

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

@endsection
