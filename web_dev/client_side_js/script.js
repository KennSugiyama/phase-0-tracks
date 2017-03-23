console.log("The script is running!");

function disappearTrick(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  photo.style.display = "none";
}


function revealTrick(event) {
  photo.style.display = "inline";
}

var photo = document.getElementById("lizard-photo");

var disappearButton = document.getElementById("disappear");
disappearButton.addEventListener("click", disappearTrick);

var revealButton = document.getElementById("reveal");
revealButton.addEventListener("click", revealTrick);


var pTag = document.getElementsByTagName("p");
var p = pTag[0];
p.style.color = "green"
