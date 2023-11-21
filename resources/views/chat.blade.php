@include('layouts.app')
<div class="background-image">
</div>

<head>
    <meta charset="UTF-8">
    <title>CodePen - Simple Chat UI</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="{{ asset('css/chat.css') }}">
    <script src="{{ asset('js/chat.js') }}"></script>
</head>

<body>
    <section class="msger">
        <header class="msger-header">

            <div class="msger-header-title">
                <i class="fas fa-comment-alt"></i>
                <a href="{{ url()->previous() }}">
                    <button type="button"> Volver </button>
                </a>
                <span class="chatWith"></span>
                <span class="typing" style="display: none;"> está escribiendo</span>
            </div>
            <div class="msger-header-options">
                <span class="chatStatus offline">
                    <i class="fas fa-globe"></i>
                </span>
            </div>
        </header>

        <div class="msger-chat"></div>

        <form class="msger-inputarea">
            <input type="text" class="msger-input" oninput="sendTypingEvent()" placeholder="Enter your message...">
            <button type="submit" class="msger-send-btn">Enviar</button>
        </form>

    </section>

    <script src='https://use.fontawesome.com/releases/v5.0.13/js/all.js'></script>
    <script src="{{ asset('js/chat.js') }}"></script>
    @auth
    <script>
    const PERSON_NAME = "{{ Auth::user()->name }}";
    </script>
    @endauth


</body>