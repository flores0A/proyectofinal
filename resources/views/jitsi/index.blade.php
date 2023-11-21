@include('layouts.app')

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Video Conference with Jitsi</title>
    <link rel="stylesheet" href="{{ asset('css/jitsi.css') }}">
</head>

<body>
    <div id="jitsi-container"></div>
    <script src="https://meet.jit.si/external_api.js"></script>
    <script>
    const domain = 'meet.jit.si';
    const options = {
        roomName: 'SALA DE PRUEBA',
        width: '90%',
        height: '100%',
        parentNode: document.querySelector('#jitsi-container'),
    };

    const api = new JitsiMeetExternalAPI(domain, options);

    // Agrega un event listener para el evento readyToClose
    api.addEventListener('readyToClose', () => {
        // Redirige a la página deseada después de cerrar la reunión
        window.location.href = '/resources/views/jitsi/index.blade.php';
    });
    </script>
</body>