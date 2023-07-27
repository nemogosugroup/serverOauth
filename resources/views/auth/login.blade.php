<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    {{-- <title>{{ config('app.name', 'Laravel') }}</title> --}}

    <title>Đăng nhập</title>
    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Icons -->
    <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
    <link rel="icon" type="" href="{{ asset('assets/media/favicons/icon-gosu.ico') }}">
    <!-- END Icons -->

    <!-- Stylesheets -->
    <!-- Fonts and Dashmix framework -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap">
    <link rel="stylesheet" id="css-main" href="{{ asset('assets/css/dashmix.min.css') }}">

    <!-- Styles -->
    {{-- <link href="{{ asset('css/app.css') }}" rel="stylesheet"> --}}
</head>
<body>
    <div id="app">
        <main id="main-container">
        <div class="bg-image" style="background-image: url({{ asset('assets/media/photos/photo21@2x.jpg') }});">
            <div class="row justify-content-center g-0 bg-orange-op">
                <div class="hero-static col-md-6 d-flex align-items-center bg-body-extra-light">
                    <div class="p-3 w-100">
                        {{-- <div class="card-header">{{ __('Login') }}</div> --}}
                        <div class="mb-3 text-center">
                            <a class="link-fx fw-bold fs-1" href="#">
                              <img src="{{ asset('assets/media/photos/logo-gosu.png') }}"  alt="Logo">
                            </a>
                            <p class="text-uppercase fw-bold fs-sm text-muted mt-3">{{ __('Đăng nhập bằng mail Gosu') }}</p>
                        </div>
                        <div class="row g-0 justify-content-center">
                            <div class="col-sm-8 col-xl-6">
                                <form method="POST" action="{{ route('login') }}">
                                    @csrf
                                    <div class="py-3">
                                        <div class="mb-4">
                                            <input id="email" type="email" class="form-control form-control-lg form-control-alt @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="{{ __('E-Mail Address') }}" autofocus>

                                            @error('email')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                        <div class="mb-4">
                                            <input id="password" type="password" class="form-control form-control form-control-lg form-control-alt @error('password') is-invalid @enderror" placeholder="{{ __('Password') }}" name="password" required autocomplete="current-password">

                                            @error('password')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="mb-4">
                                        <button type="submit" class="btn btn-primary text-white btn w-100 btn-lg btn-hero btn-warning"><i class="fa fa-fw fa-sign-in-alt me-1"></i> 
                                            {{ __('Đăng nhập') }}
                                        </button>

                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hero-static col-md-6 d-none d-md-flex align-items-md-center justify-content-md-center text-md-center">
                    <div class="p-3">
                      <p class="display-4 fw-bold text-white mb-3">
                        Welcome to the GOSU
                      </p>
                      <p class="fs-lg fw-semibold text-white-75 mb-0">
                        Crafted with NEMO Software &copy;<span data-toggle="year-copy">2023</span>
                      </p>
                    </div>
                </div>
            </div>
        </div>
        </main>
    </div>
</body>
<script>
    // Kiểm tra nếu có giá trị trong session
    var message = "{{ session('message') }}";
    if (message) {
        alert(message);
    }
</script>
</html>
