<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- plugins:css -->
    <link rel="stylesheet" href="{{ asset('assets/theme/vendors/feather/feather.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/theme/vendors/mdi/css/materialdesignicons.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/theme/vendors/ti-icons/css/themify-icons.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/theme/vendors/typicons/typicons.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/theme/vendors/simple-line-icons/css/simple-line-icons.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/theme/vendors/css/vendor.bundle.base.css') }}">
    <!-- endinject -->

    <!-- Plugin css for this page -->
    <!-- <link rel="stylesheet" href="{{ asset('assets/theme/vendors/datatables.net-bs4/dataTables.bootstrap4.css') }}"> -->
    <link rel="stylesheet" href="{{ asset('assets/theme/js/select.dataTables.min.css') }}">
    <!-- End plugin css for this page -->

    <!-- inject:css -->
    <link rel="stylesheet" href="{{ asset('assets/theme/css/vertical-layout-light/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/my-modal.css') }}">
    <!-- endinject -->
    <link rel="icon" type="" href="{{ asset('assets/media/favicons/icon-gosu.ico') }}">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Bootstrap CSS -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body class="sidebar-dark">
    <div class="container-scroller" id="app">
        <div class="container-fluid page-body-wrapper">
            @yield('header')

            @yield('left-sidebar')
            
            <div class="main-panel">

                @yield('content')
                @yield('footer')
            </div>
        </div>
    </div>
    <!-- plugins:js -->
    <script src="{{ asset('assets/theme/vendors/js/vendor.bundle.base.js') }}"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="{{ asset('assets/theme/vendors/chart.js/Chart.min.js') }}"></script>
    <script src="{{ asset('assets/theme/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js') }}"></script>
    <script src="{{ asset('assets/theme/vendors/progressbar.js/progressbar.min.js') }}"></script>

    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="{{ asset('assets/theme/js/off-canvas.js') }}"></script>
    <script src="{{ asset('assets/theme/js/hoverable-collapse.js') }}"></script>
    <script src="{{ asset('assets/theme/js/template.js') }}"></script>
    <script src="{{ asset('assets/theme/js/settings.js') }}"></script>
    <script src="{{ asset('assets/theme/js/todolist.js') }}"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="{{ asset('assets/theme/js/dashboard.js') }}"></script>
    <script src="{{ asset('assets/theme/js/Chart.roundedBarCharts.js') }}"></script>
    <!-- End custom js for this page-->
    
    <script src="{{ asset('assets/theme/js/dashboard.js') }}"></script>

    @yield('scripts')
</body>
</html>
