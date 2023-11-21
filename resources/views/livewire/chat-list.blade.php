<div>
    <h5 class="mt-3"><strong>Chat en Tiempo Real</strong></h5>
    <ul class="chat-list">
        @foreach($mensajes as $mensaje)
        <li class="message">
            <span class="user">{{$mensaje["usuario"]}}</span>
            <br>
            <span class="text">{{$mensaje["mensaje"]}}</span>
        </li>
        @endforeach
    </ul>
    <script>
    // Enable pusher logging - don't include this in production
    Pusher.logToConsole = true;

    var pusher = new Pusher('f0690a668b4b13a7cee7', {
        cluster: 'eu'
    });

    var channel = pusher.subscribe('chat-channel');
    channel.bind('chat-event', function(data) {
        // alert(JSON.stringify(data));

        window.livewire.emit('mensajeRecibido', data);
    });
    </script>
</div>