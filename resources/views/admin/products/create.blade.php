@extends('layouts.admin')

@section('content')
    <div class="container">
        <h1>Создать товар</h1>
        <form action="{{route('admin.products.store')}}" enctype="multipart/form-data" method="post">
            {{csrf_field()}}
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <div class="form-group">
                <label for="category_id">Категория</label>
                <select class="form-control" id="category_id" name="category_id">
                    @foreach ($categories as $category)
                        <option value="{{$category->id}}">{{$category->name}}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="name">Имя товара</label>
                <input type="text" class="form-control" id="name" placeholder="Введите имя" name="name">
            </div>
            <div class="form-group">
                <label for="description">Описание товара</label>
                <textarea class="form-control" id="description" rows="3" name="description"></textarea>
            </div>
            <div class="form-group">
                <label for="price">Цена товара в руб.</label>
                <input type="number" min="0" step="0.01" class="form-control" id="price" name="price">
            </div>
            <div class="form-group">
                <label for="img">Фото товара</label>
                <input type="file" class="form-control-file" id="img" name="img">
            </div>
            <button type="submit" class="btn btn-primary">Создать</button>
        </form>
    </div>
@endsection
