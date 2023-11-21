
const CACHE_NAME = 'my-cache-v1';
const urlsToCache = [
    '/',
    '/chat.js',
    '/css/app.css',
    '/img'


    // AgregaR recursos que desees precargar CSS ,HTML , JS, imágenes 
];

self.addEventListener('install', (event) => {
    event.waitUntil(
        caches.open(CACHE_NAME)
            .then((cache) => {
                return cache.addAll(urlsToCache)
                    .catch((error) => {
                        console.error('Cache addAll failed:', error);
                    });
            })
    );
});

self.addEventListener('fetch', (event) => {
    event.respondWith(
        caches.match(event.request)
            .then((response) => {
                return response || fetch(event.request)
                    .catch((error) => {
                        console.error('Fetch failed:', error);
                    });
            })
    );
});
