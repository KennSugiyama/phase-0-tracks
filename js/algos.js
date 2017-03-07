// FUNCTIONS
// RELEASE 0
function longest(array) {
	var result = array[0];
	for (var i = 0; i < array.length; i++){
		// console.log ("iteration: "+i );
		// console.log ("key:" + result.length);
		// console.log ("test with: " + array[i].length);
		if (array[i].length >= result.length) {
			
			result = array[i];
		}
	}
	return (result);
}


//RELEASE 1
function keyPair(KParray1,KParray2) {
	var keyPairExists = true;
	console.log ("Comparing the following two key-value arrays:");
	console.log(KParray1);
	console.log(KParray2);
	if (KParray1["name"] == KParray2["name"] || KParray1["age"] == KParray2["age"]) {
		return keyPairExists;
	} else {
		return keyPairExists = false;
	}
	
}

// RELEASE 2)
function randomWordGenerator(sizeOfWord) {
	alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
	var randomWord = "";
	for (var i = 0; i < sizeOfWord; i++) {
		var letterPosition = (Math.floor((Math.random() * 26)));
		randomWord += (alphabet[letterPosition]);
	}
	return randomWord;
}

function randomListGenerator(size) {
	RandomWordList = [];
	for (var i = 0; i < size; i++) {
		var RandomWordLength = (Math.floor((Math.random() * 10) + 1));
		var newWord = randomWordGenerator(RandomWordLength);
		RandomWordList.push(newWord);
	}
	return (RandomWordList)
}


// RELEASE 2 / FINAL DRIVER CODE (Older Driver Code below)
console.log("START")
for (var i = 0; i < 10; i++) {
	var randomListSize = (Math.floor((Math.random() * 10) + 2));
	var randomList = randomListGenerator(randomListSize);
	console.log ("List " + (i + 1) + " (size of " + randomListSize + "):");
	console.log (""+randomList);
	var longestWord = longest(randomList);
	console.log ("Longest word: " + longestWord);
	console.log("--------");
}
console.log("END")



/* PSEUDO CODE
RELEASE 0)
array of words/phrases   => the longest word or phrases

make array[0] the correct response

compare correct response with array[1]
if correct response is longer, keep it
	else, if array [1] is longer, then replace the correct response with array[1]
		repeat with the next array element until complete.


RELEASE 1) 
//GOAL:  {name: "Steven", age: 54} and {name: "Tamir", age: 54} => true
check to see if array1[0] marches array2[0]
if they matche, then there is at least one key value pair 
check to see if array1[1] marches array2[1]
if they matche, then there is at least one key value least one key value pair.


RELEASE 2)
// randomArrayOfStrings(3)

// // Input: integer for length (3)
// RandomWordListFunction
// Make an empty array (RandomWordList)
// Repeat three times
// random number for first word (between 0 and 10) (4)
// RandomWordFunction(4)


// RandomWordFunction(4)
// pick random letter
// put random letter to new Random word
// once repeated 4 times, then add the new random word to the random word list



END */


// OLD DRIVER CODES
// RELEASE 0)
// console.log(longest(["one" , "five" , "hahahaha"]));
// console.log(longest(["hello world", "hi", "hello"]));
// console.log(longest(["tiny", "super duper long", "medium", "average"]));

// RELEASE 1)
// var result = keyPair({name: "Steven", age: 54},{name: "Tamir", age: 54});
// console.log("Do at least one Key/Pairs Exist? " + result);
// console.log("");
// console.log("");

// var result = keyPair({name: "Steven", age: 54},{name: "Tamir", age: 500});
// console.log("Do at least one Key/Pairs Exist? " + result);
// console.log("");
// console.log("");

// var result = keyPair({name: "Steven", age: 54},{name: "Steven", age: 54});
// console.log("Do at least one Key/Pairs Exist? " + result);
// console.log("");
// console.log("");

// var result = keyPair({name: "Kenn", age: 54},{name: "Steven", age: 74});
// console.log("Do at least one Key/Pairs Exist? " + result);
