@extends('layouts.admin')

@section('content')
    <div class="container">
        <h1>Список заказов</h1>
        <table class="table table-bordered">
            <tr>
                <td>ID заказа</td>
                <td>Имя пользователя</td>
                <td>Email пользователя</td>
                <td>ID товара</td>
                <td>Имя товара</td>
                <td>Цена товара</td>
            </tr>
            @foreach($orders as $order)
                <tr>
                    <td>{{$order->id}}</td>
                    <td>{{$order->user->name}}</td>
                    <td>{{$order->user->email}}</td>
                    <td>{{$order->product->id}}</td>
                    <td>{{$order->product->name}}</td>
                    <td>{{$order->product->price}}</td>
                </tr>
            @endforeach
        </table>
    </div>
@endsection
