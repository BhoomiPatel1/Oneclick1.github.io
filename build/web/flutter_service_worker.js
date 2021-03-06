'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "6ae0450da8dcfcc122c2907ff6d8d47c",
"/": "6ae0450da8dcfcc122c2907ff6d8d47c",
"main.dart.js": "3caf35ef743a6573a3ff59768ae6df78",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "853b300a84b00af1579d4b62360b7f7b",
"assets/LICENSE": "0000d255865246c9b55862d96ffd3089",
"assets/AssetManifest.json": "2262adc7ced48a266be885ca7b2da5e7",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/assets/bg1.png": "12fb6760693b71c07b6d27f98e4a652c",
"assets/assets/bg2.png": "d4429fd28ea9931519ed6b658e565082"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
