<div>
    <h1 class="titulo"> LIVE CHAT</h1>
    <br>
    <div class=" form-group">
        <label for="nombre">Nombre</label>
        <input type="text" class="form-control" id="nombre" wire:model="nombre">
        <!--<small>{{$nombre}}</small>-->
        @error("nombre") <small class="text-danger">{{$message}}</small>
        @enderror
    </div>
    <div class="form-group">
        <label for="mensaje">Mensaje</label>
        <input type="text" class="form-control" id="mensaje" wire:model="mensaje">
        <!-- <small>{{$mensaje}}</small>-->
        @error("mensaje") <small class="text-danger">{{$message}}</small>
        @enderror

    </div>
    <br>
    <button class="btn btn-primary" wire:click="enviarMensaje">Enviar Mensaje</button>
    <br>

    <!-- MENSAJES DE ALERTA-->
    <div class=" alert alert-success collapse mt-3" role="alert" id="avisoSuccess">
        Se ha
        enviado
    </div>

    <script>
    // Establecemos un "escuchador de eventos" para el evento 'mensajeEnviado' en Livewire.
    window.livewire.on('mensajeEnviado', function() {
        $("#avisoSuccess").fadeIn("slow");
        setTimeout(function() {
            $("#avisoSuccess").fadeOut("slow");
        }, 3000);
    });
    </script>

</div>