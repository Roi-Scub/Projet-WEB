<?php 
$('#wishlistHeart').on('click',function() {
    var data = $('#wishlistHeart').serialize();
    var message = "Changement détecté.";
  
    var wishlistId = $('')
     

    // Envoie de la requête AJAX au serveur
    $.ajax({

        url: '../../models/wishlist_ajax.php',
        method: 'POST',
        data: data,
        dataType: 'json',

        success: function(data) {
            // Mettez à jour la div avec les résultats
            console.log(message); 

            $('#resultats').html(data.resultats);
        }
    });
});

?>