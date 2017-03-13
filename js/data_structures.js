var colors = ["black", "blue", "red", "yellow"];
var names = ["Ed", "Bob", "Samantha", "Jose"];

colors.push("green");
names.push("Spartan");

// console.log (colors)
// ;
// console.log (names);


var horses = {};


for (var i = 0; i < names.length; i++) {
    console.log(names[i]);
    console.log(colors[i])};


for (var i = 0; i < names.length; i++) {
    horses[names[i]] = colors[i]
};

console.log (horses);


function Car(color, year, model){
	console.log("Our new car:", this)
	this.color = color;
	this.year = year;
	this.model = model;

	this.speed_up = function () {
		console.log("Increasing speed!!!");
	}

		console.log("Car initialization complete.")
}


var car1 = new Car("red", 2015, "Tesla");
console.log(car1);
car1.speed_up()



var car2 = new Car("black", 2008, "Honda Accord");
console.log(car2);
car2.speed_up()