@extends('layouts.admin')

@section('content')
    <div class="container">
        <h1>Список категорий</h1>
        <a href="{{route('admin.categories.create')}}" class="btn btn-link">Создать категорию</a>
        <table class="table table-bordered">
            <tr>
                <td>Товары,<br> входящие в категорию</td>
                <td>ID категории</td>
                <td>Имя</td>
                <td>Описание</td>
                <td>Редактировать</td>
                <td>Удалить</td>
            </tr>
            @foreach($categories as $category)
                <tr>
                    <td><a class="btn btn-default"
                           href="{{route('admin.products.listing', ['category_id' => $category->id])}}">Показать</a>
                    </td>
                    <td>{{$category->id}}</td>
                    <td>{{$category->name}}</td>
                    <td>{{$category->description}}</td>
                    <td><a class="btn btn-default" href="{{route('admin.categories.edit', ['id' => $category->id])}}">Редактировать</a>
                    </td>
                    <td><a class="btn btn-danger" href="{{route('admin.categories.delete', ['id' => $category->id])}}">Удалить</a>
                    </td>
                </tr>
            @endforeach
        </table>
    </div>
@endsection
