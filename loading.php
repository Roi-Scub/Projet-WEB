

<div class="spinner"></div>

    <video autoplay muted loop id="boat_anim">
    <source src="videos/boat-loading.mp4" type="video/mp4">
    </video>

    <h1 style="color: #29323D; position: absolute; top: 65%; left: 28.5%; z-index: 2;font-weight: bolder;font-size:4vw;">La traversée est en cours...</h1>

<style>

.spinner {
   width: 11vw;
   height: 11vw;
   border-radius: 50%;
   border: 1vw solid #29323D;
    margin: 19% auto;
   animation: spinner-bulqg1 0.8s infinite linear alternate,
        spinner-oaa3wk 1.6s infinite linear;
    position: absolute;   
    top: 0%;
    left: 44%;
    z-index: 2;
        
}

#boat_anim {

position:absolute;
margin: 13% auto;
width: 25vw;
height: 25vw;
overflow: hidden;
z-index: 1;
position: absolute;
top: 0%;
left: 38%;
border: 0px;

border-radius: 50%;


}
    
@keyframes spinner-bulqg1 {
   0% {
      clip-path: polygon(50% 50%, 0 0, 50% 0%, 50% 0%, 50% 0%, 50% 0%, 50% 0%);
   }

   12.5% {
      clip-path: polygon(50% 50%, 0 0, 50% 0%, 100% 0%, 100% 0%, 100% 0%, 100% 0%);
   }

   25% {
      clip-path: polygon(50% 50%, 0 0, 50% 0%, 100% 0%, 100% 100%, 100% 100%, 100% 100%);
   }

   50% {
      clip-path: polygon(50% 50%, 0 0, 50% 0%, 100% 0%, 100% 100%, 50% 100%, 0% 100%);
   }

   62.5% {
      clip-path: polygon(50% 50%, 100% 0, 100% 0%, 100% 0%, 100% 100%, 50% 100%, 0% 100%);
   }

   75% {
      clip-path: polygon(50% 50%, 100% 100%, 100% 100%, 100% 100%, 100% 100%, 50% 100%, 0% 100%);
   }

   100% {
      clip-path: polygon(50% 50%, 50% 100%, 50% 100%, 50% 100%, 50% 100%, 50% 100%, 0% 100%);
   }
}

@keyframes spinner-oaa3wk {
   0% {
      transform: scaleY(1) rotate(0deg);
   }

   49.99% {
      transform: scaleY(1) rotate(135deg);
   }

   50% {
      transform: scaleY(-1) rotate(0deg);
   }

   100% {
      transform: scaleY(-1) rotate(-135deg);
   }
}

/* JAVASCRIPT CHANGEMENT DE PAGE AUTOMATIQUE */

</style>

<script>var delayInMilliseconds = 2000; //1 second

setTimeout(function() {
    document.location.href = "logout.php";
}, delayInMilliseconds);

</script>