@extends('layouts.admin')

@section('content')
    <div class="container">
        <h1 class="main-admin-title">Добро пожаловать в панель администратора, {{ Auth::user()->name }}!</h1>
    </div>
@endsection
