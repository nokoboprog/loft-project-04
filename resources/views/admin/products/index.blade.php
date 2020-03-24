@extends('layouts.admin')

@section('content')
    <div class="container">
        <h1>Список товаров</h1>
        <a href="{{route('admin.products.create')}}" class="btn btn-link">Создать товар</a>
        <table class="table table-bordered">
            <tr>
                <td>ID товара</td>
                <td>Категория</td>
                <td>Имя</td>
                <td>Описание</td>
                <td>Цена</td>
                <td>Фото</td>
                <td>Редактировать</td>
                <td>Удалить</td>
            </tr>
            @foreach($products as $product)
                <tr>
                    <td>{{$product->id}}</td>
                    <td>{{$product->category->name}}</td>
                    <td>{{$product->name}}</td>
                    <td>{{$product->description}}</td>
                    <td>{{$product->price}}</td>
                    <td><img src="/upload/products/{{$product->img}}" alt="" width="72"></td>
                    <td><a class="btn btn-default" href="{{route('admin.products.edit', ['id' => $product->id])}}">Редактировать</a></td>
                    <td><a class="btn btn-danger" href="{{route('admin.products.delete', ['id' => $product->id])}}">Удалить</a></td>
                </tr>
            @endforeach
        </table>
    </div>
@endsection
