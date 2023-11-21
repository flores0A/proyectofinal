<!-- resources/views/video-conference.blade.php -->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Video Conference with Jitsi</title>
</head>

<body>
    <div id="jitsi-container"></div>
    <script src="https://meet.jit.si/external_api.js"></script>
    <script>
    const domain = 'meet.jit.si';
    const options = {
        roomName: 'your-room-name', // Reemplaza con el nombre de tu sala
        width: '100%',
        height: '100%',
        parentNode: document.querySelector('#jitsi-container'),
    };

    const api = new JitsiMeetExternalAPI(domain, options);
    </script>
</body>

</html>