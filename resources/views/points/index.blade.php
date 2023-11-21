@include('layouts.app')

<head>
    <link rel="stylesheet" href="{{ asset('css/points.css') }}">
</head>
<div class="background-image">
</div>
<div class="container">
    <form class="points-form" method="post" action="/api/points">
        @csrf
        <h2 class="form-title">API Rest con Json-Server_db</h2>
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required>
        <br>
        <label for="comentario">Comentario:</label>
        <textarea id="comentario" name="comentario" required></textarea>
        <br>
        <button type="submit">Enviar</button>
    </form>
</div>