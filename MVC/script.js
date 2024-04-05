// Avant d'utiliser un Service Worker,
// on vérifie que c'est possible.


  console.log("App: Installation en cours.");

if ("serviceWorker" in navigator) {
  console.log("App: Service Worker pris en charge.");
    // Puis on déclare celui-ci
    // via la fonction register

    navigator.serviceWorker

    
      .register("/service-worker.js")
      .then(registration => {

        // On a réussi !
        console.log(
          "App: Achievement unlocked."
        );

      })
      .catch(error => {

        // Il y a eu un problème
        console.error(
          "App: Crash de Service Worker",
          error
        );

      });
  } else {

    console.log(
      "App: Service Worker non pris en charge."
    );

    // Si le navigateur ne permet pas
    // d'utiliser un Service Worker
    // on ne fait rien de particulier.
    // Le site devrait continuer à
    // fonctionner normalement.

  }


// …

//registerServiceWorker();
//if ('serviceWorker' in navigator) {
//    window.addEventListener('load', function() {
//      navigator.serviceWorker.register('service-worker.js')
//        .then(function(registration) {
//          console.log('ServiceWorker registration successful with scope: ', registration.scope);
//        })
//        .catch(function(error) {
//          console.error('ServiceWorker registration failed: ', error);
//        });
//    });
//  }

