// Définition du nom du cache
console.log("SW: Téléchargement fini.");

// (1) Installation
self.addEventListener("install", event => {
    console.log("SW: Installation en cours.");

    // Un Service Worker a fini d'être
    // installé quand la promesse dans
    // event.waitUntil est résolue

    event.waitUntil(

        // Création d'une promesse
        // factice qui est résolue au
        // bout d'une seconde.
        // Nous verrons dans l'article
        // suivant par quoi remplacer
        // cette promesse

        new Promise((resolve, reject) => {
            setTimeout(() => {
                console.log("SW: Installé.");
                resolve();
            }, 1000);
        })

    );
});

// (2) Activation
self.addEventListener("activate", event => {
    console.log("SW: Activation en cours.");

    // Un Service Worker a fini d'être
    // activé quand la promesse dans
    // event.waitUntil est résolue

    event.waitUntil(

        // Création d'une promesse
        // factice qui est résolue au
        // bout d'une seconde.
        // Nous verrons dans l'article
        // suivant par quoi remplacer
        // cette promesse

        new Promise((resolve, reject) => {
            setTimeout(() => {
                console.log("SW: Activé.");
                resolve();
            }, 1000);
        })

    );
});

//var CACHE_NAME = 'my-pwa-cache';
//
//// Liste des fichiers à mettre en cache
//var urlsToCache = [
//  '/',
//  '/index.php',
//  '/style.css',
//  '/script.js',
//  '/logo_grand.png'
//];
//
//// Installation du service worker et mise en cache des ressources
//self.addEventListener('install', function(event) {
//  // Perform actions required during the installation phase
//  event.waitUntil(
//    caches.open(CACHE_NAME)
//      .then(function(cache) {
//        console.log('Cache opened');
//        return cache.addAll(urlsToCache);
//      })
//  );
//});
//
//// Activation du service worker et nettoyage des anciens caches
//self.addEventListener('activate', function(event) {
//  // Perform actions required during the activation phase
//  event.waitUntil(
//    caches.keys().then(function(cacheNames) {
//      return Promise.all(
//        cacheNames.map(function(cacheName) {
//          if (cacheName !== CACHE_NAME) {
//            console.log('Deleting old cache:', cacheName);
//            return caches.delete(cacheName);
//          }
//        })
//      );
//    })
//  );
//});
//self.addEventListener('fetch', function(event) {
//    event.respondWith(
//      caches.match(event.request)
//        .then(function(response) {
//          // Cache hit - return response
//          if (response) {
//            return response;
//          }
//          // Check if the request scheme is HTTP(S)
//          if (!event.request.url.startsWith('http')) {
//            // Skip caching non-HTTP(S) requests
//            return fetch(event.request);
//          }
//          // Clone the request and fetch the response from the network
//          return fetch(event.request).then(
//            function(response) {
//              // Check if we received a valid response
//              if (!response || response.status !== 200 || response.type !== 'basic') {
//                return response;
//              }
//              // Clone the response
//              var responseToCache = response.clone();
//              // Open cache and cache the response
//              caches.open(CACHE_NAME)
//                .then(function(cache) {
//                  cache.put(event.request, responseToCache);
//                });
//              return response;
//            }
//          );
//        })
//    );
//  });