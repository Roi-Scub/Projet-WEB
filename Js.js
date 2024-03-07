var slider = document.getElementById("myRange");
var output = document.getElementById("demo");
output.innerHTML = slider.value; // Display the default slider value



// Update the current slider value (each time you drag the slider handle)
slider.oninput = function() {
  output.innerHTML = this.value;
}




var errorBox = document.getElementsByClassName("errorBox")[0]
if (errorBox.getElementsByTagName("p").length > 0) {
    errorBox.style.display = "flex";
    errorBox.animate(
        [
            { transform: 'translateX(5px)' },
            { transform: 'translateX(-10px)' },
            { transform: 'translateX(10px)' },
            { transform: 'translateX(-10px)' },
            { transform: 'translateX(5px)' }

        ],
        {
            duration: 250,
            iterations: 1
        }
    )

    document.getElementsByClassName("contenantBox")[0].classList.add("haveError");
}

