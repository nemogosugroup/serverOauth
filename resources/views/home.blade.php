@extends('layouts.app')

@section('header')
    @include('layouts.header')
@endsection

@section('left-sidebar')
    @include('layouts.left-sidebar')
@endsection

@section('content')
    @include('layouts.content')  
@endsection

@section('footer')
    @include('layouts.footer')
@endsection

@section('scripts')
    <script src="{{ asset('assets/js/left-sidebar-modal.js') }}"></script>
@endsection
