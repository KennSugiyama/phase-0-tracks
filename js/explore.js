/*
"hello"  => "olleh"
ask for input
for each letter
add it to the string
repeat for the length of the string
*/

function reverse(word) {
	var reverse_word = "";
	console.log("Word to reverse: "+ word);
	word = word.split("");
	for (var i = word.length - 1; i >= 0; i--) {
		reverse_word = reverse_word + word[i];
	}
	return (reverse_word) 
}


// driver Code

var response = (reverse("hello word"));
console.log (response);
console.log ("")

var number = response.length;

if (number % 2 == 0) {
	console.log ("There is an even number of letters");
} else {
		console.log ("There is an odd nujmber of letters");
}
console.log ("-------------")
console.log ("")


var response = (reverse("Sugiyama Kenneth"));
console.log (response);
console.log ("")

var number = response.length;

if (number % 2 == 0) {
	console.log ("There is an even number of letters");
} else {
		console.log ("There is an odd nujmber of letters");
}
console.log ("-------------")
console.log ("")


var response = (reverse("I like turtles"));
console.log (response);
console.log ("")

var number = response.length;

if (number % 2 == 0) {
	console.log ("There is an even number of letters");
} else {
		console.log ("There is an odd nujmber of letters");
}
console.log ("-------------")
console.log ("")


var response = (reverse("four"));
console.log (response);
console.log ("")

var number = response.length;

if (number % 2 == 0) {
	console.log ("There is an even number of letters");
} else {
		console.log ("There is an odd nujmber of letters");
}
console.log ("-------------")
console.log ("")



var response = (reverse("seven"));
console.log (response);
console.log ("")

var number = response.length;

if (number % 2 == 0) {
	console.log ("There is an even number of letters");
} else {
		console.log ("There is an odd number of letters");
}
console.log ("-------------")
console.log ("")

