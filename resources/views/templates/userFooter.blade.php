<footer>
    <!-- Footer Start-->
    <div class="footer-main footer-bg">
        <div class="footer-area p-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-12 footer-info text-center">
                        <h4 class="text-white">Social</h4>
                        <div class="social-links d-flex mt-4 text-white justify-content-center">
                            <a href="https://twitter.com/radarbogorID" class="twitter h3 text-danger p-1"><i class="fab fa-fw fa-twitter"></i></a>
                            <a href="https://www.facebook.com/radar.bogor" class="facebook h3 text-danger p-1"><i class="fab fa-fw fa-facebook"></i></a>
                            <a href="https://www.instagram.com/radar_bogor/" class="instagram h3 text-danger p-1"><i class="fab fa-fw fa-instagram"></i></a>
                            <a href="https://www.tiktok.com/@radarbogor?lang=id-ID" class="tiktok h3 text-danger p-1"><i class="fas fa-music"></i></a>
                        </div>
                    </div>

                    <div class="col-lg-5 text-center col-6 footer-links">
                        <h4 class="text-white">Useful Links</h4>
                        <ul>
                            <li><a href="/">Home</a></li>
                            <li><a href="/books">Voting</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-4 col-md-12 footer-contact text-center text-md-start">
                        <h4 class="text-white">Contact Us</h4>
                        <p class="text-white">
                            Graha Pena Bogor, Jl KHR Abdullah Bin Nuh Jl.Ring Road Taman Yasmin No.30,​ <br> RT.05/RW.04, Cibadak, Kec. Bogor Bar., Kota Bogor,<br> Jawa Barat 16113 <br><br>
                            <strong>Phone:</strong> 0251 754 4001<br>
                            <strong>Whatsapp:</strong> 0815 8302 200<br>
                            <strong>Email:</strong> redaksi@radar-bogor.com<br>
                        </p>

                    </div>

                </div>
            </div>
		<script async src="https://cse.google.com/cse.js?cx=a48444bc764f2652a"></script>
		<div class="gcse-search"></div>
        </div>
        <!-- footer-bottom aera -->
        <div class="footer-bottom-area footer-bg">
            <div class="container">
                <div class="footer-border">
                    <div class="row d-flex align-items-center">
                        <div class="col-xl-12 ">
                            <div class="footer-copy-right text-center">
                                <p>
                                    Copyright RBVote &copy;<script>
                                        document.write(new Date().getFullYear());
                                    </script> All rights reserved
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End-->
</footer>
<!-- Search model Begin -->
<div class="search-model-box">
    <div class="d-flex align-items-center h-100 justify-content-center">
        <div class="search-close-btn">+</div>
        <form action="/search" class="search-model-form">
            <input type="text" id="search" name="search" placeholder="Searching {{ isset($_GET['searchBooks']) ? 'Books' : 'Posts' }}.....">
            @if(isset($_GET['searchBooks']))
            <input type="hidden" id="searchBooks" name="searchBooks" value="{{$_GET['searchBooks']}}">
            @endif
        </form>
    </div>
</div>
<!-- Search model end -->

<!-- JS here -->
<script>
    (function newCaption() {
        var captions = [
            'E-Voting Radar Bogor',
            'Radar Bogor #LebihDekatLebihLengkap',
            'Radar Bogor'
        ];
        var randomCapt = Math.floor(Math.random() * captions.length);
        document.getElementById('captDisplay').innerHTML = captions[randomCapt];
    })();
</script>

<!-- Jquery, Popper, Bootstrap -->
<script src="{{asset('template')}}/js/vendor/jquery-1.12.4.min.js"></script>
<script src="{{asset('template')}}/js/bootstrap.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="{{asset('template')}}/js/slick.min.js"></script>
<!-- Date Picker -->
<script src="{{asset('template')}}/js/gijgo.min.js"></script>
<!-- One Page, Animated-HeadLin -->
<script src="{{asset('template')}}/js/wow.min.js"></script>

<!-- Scrollup, nice-select, sticky -->
<script src="{{asset('template')}}/js/jquery.scrollUp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->
<script src="{{asset('template')}}/js/plugins.js"></script>
<script src="{{asset('template')}}/js/main.js"></script>
