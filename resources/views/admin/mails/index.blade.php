@extends('layouts.admin')

@section('content')
    <div class="container">
        <h2>Список email адресов на которые приходят письма с заказами</h2>
        <a href="{{route('admin.mails.create')}}" class="btn btn-link">Создать email адрес</a>
        <table class="table table-bordered">
            <tr>
                <td>ID</td>
                <td>Email</td>
                <td>Редактировать</td>
                <td>Удалить</td>
            </tr>
            @foreach($mails as $mail)
                <tr>
                    <td>{{$mail->id}}</td>
                    <td>{{$mail->email}}</td>
                    <td><a class="btn btn-default" href="{{route('admin.mails.edit', ['id' => $mail->id])}}">Редактировать</a>
                    </td>
                    <td><a class="btn btn-danger"
                           href="{{route('admin.mails.delete', ['id' => $mail->id])}}">Удалить</a></td>
                </tr>
            @endforeach
        </table>
    </div>
@endsection
