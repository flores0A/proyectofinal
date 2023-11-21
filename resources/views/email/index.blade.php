@include('layouts.app')

<head>
    <link rel="stylesheet" href="{{ asset('css/email.css') }}">
</head>
<div class="background-image">
</div>
<div class="container">
    <form class="email-form" action="{{ route('enviarcorreo') }}" method="POST">
        @csrf
        <h2 class="form-title">Envío de Correos</h2>
        <div class="mb-3">
            <label for="nombre" class="form-label">Nombre completo</label>
            <input type="text" name="nombre" class="form-control" id="nombre" placeholder="name@example.com" required>
        </div>
        <div class="mb-3">
            <label for="asunto" class="form-label">Asunto</label>
            <input type="text" name="asunto" class="form-control" id="asunto" placeholder="name@example.com" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Correo Electrónico</label>
            <input type="email" name="email" class="form-control" id="email" placeholder="name@example.com" required>
        </div>
        <div class="mb-3">
            <label for="mensaje" class="form-label">Mensaje</label>
            <textarea class="form-control" name="mensaje" id="mensaje" rows="3"></textarea>
        </div>
        <div class="mb-3">
            <button type="submit" class="btn btn-primary">Enviar</button>
        </div>
    </form>
</div>