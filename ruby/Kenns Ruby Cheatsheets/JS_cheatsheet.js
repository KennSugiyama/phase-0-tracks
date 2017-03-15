//Single Line Comment

/*
Multiple
Line
Comment
*/

-

/*Basics

Decalare Variables
var variableName1 = "word";
var variableName2 = null;
var variableName3 = 123;
var variableName4 = true;

Print
console.log ("blah blah blah and this is the variable" + variableName1);

Reassigning Variables
variableName4 = false;
*/

-
/*
IF THEN EXAMPLE
var isOver21 = true;
var drinksAlcohol = true;

if (isOver21 && drinksAlcohol) {
	console.log("Would you like a drink -- beer or wine, perhaps?");
} else if (isOver21 && !drinksAlcohol) {
	console.log("Can I get you an ice water, coffee, tea, or soft drink?");
} else {
	console.log("One Shirley Temple, coming up!");
}
*/

-

/* FUNCTION EXAMPLE
// add two numbers
function add(x, y) {
  return x + y;
}

// say hello
function sayHello() {
  console.log("Hello!");
}

console.log(add(5,3));
sayHello();
*/




/*
LOOPS EXAMPLE
var str = "Loop over me!";

// Look at line 8:
// We initialize our counter, set its "while" condition, 
// and give the increment command that should happen 
// after each iteration of the loop -- 
// all in one tight line of code!


for (var i = 0; i < str.length; i++) {
	console.log(str[i]);
}


My example:
var number = 0
for (var i = 0; i < 10; i+=2) {
	number++
	console.log(number)
}
*/



DATA STRUCTURE
// a single object
var people = {
    1 : 'Joe',
    3 : 'Sam',
    8 : 'Eve'
};

// or, an array of objects
var people = [
    { id: 1, name: 'Joe'},
    { id: 3, name: 'Sam'},
    { id: 8, name: 'Eve'}
];


KITTEN ARRAY EXAMPLE
// declaring an array in JavaScript is similar to Ruby
var kittens = ["Buster", "Princess Fluffypaws", "Minxy"];

// you can access items by index
console.log(kittens[0]);

// you can search for something with indexOf
console.log("Minxy is at index " + kittens.indexOf("Minxy"));

// you can add an item with .push
kittens.push("Mr. Whiskers");

// an array knows its length, which we can use in a for loop
console.log("The length of the array is " + kittens.length);

// here's how we'd loop through each one, using i as an index
for (var i = 0; i < kittens.length; i++) {
    console.log(kittens[i]);
}

// removing an item from an array is a little weird ...
// here we start at index 2 (first argument) and
// remove 1 item (second argument):
kittens.splice(2, 1);

// That removed Minxy:
console.log(kittens);
*/






// or, a combination of the two
var people = {
    1 : { id: 1, name: 'Joe'},
    3 : { id: 3, name: 'Sam'},
    8 : { id: 8, name: 'Eve'}
};
*/