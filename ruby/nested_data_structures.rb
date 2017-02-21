# Nester Data Structure of a shopping center

shopping_center = {
	restaurants: {
		fast_food: {
			name:'McD',
			time_open: '9am',
			time_close: '11pm',
			menu_items: [
				"chocolate shake", "french fries", "Big Mac", "Fish Fillet", "Chicken Nuggets"]
		},
		mexican_restaurant: {
			name:'Rubio',
			time_open: '10am',
			time_close: '9:30pm',
			menu_items: ["Seafood taco", "chicken burrito", "enchiladas", "nachos", "quesadillas"]
		},
		japanese_restaurant: {
			name:'yummy tako!!',
			time_open: '11am',
			time_close: '10pm',
			menu_items: ["Ramen", "Okonomiyaki", "Beef Terikayi Bowl"]
		},
		mediterranean_restaurant: {
			name:'gyro gryo gryo',
			time_open: '11am',
			time_close: '10pm',
			menu_items: ["Mediterranean salad", "Chicken gyro", "lamb gyro"]
		},
		vegan_restaurant: {
			name: "Vegan",
			time_open: '11am',
			time_close: '9:30pm',
			menu_items: ["corn", "wheat", "warm water"]
		}
	},
	retail: {
		clothing_retailer: {
			name:'HM',
			time_open: '930am',
			time_close: '10pm',
			inventory_items: ["jeans", "dress shirt", "hipster tee", "humorous ironic tee shirt", "belt"]
		},
		electronics_retailer: {
			name: 'Best Buy',
			time_open: '930am',
			time_close: '10pm',
			inventory_items: ["Meatloaf CD", "iPhone", "Car charger", "Printer"]
			},
		books_retailer: {
			name: 'Barnes & Nobel',
			time_open: '930am',
			time_close: '10pm',
			inventory_items: ["Murder She Wrote", "Encyclopedia Set"]
		}
	}
}

#Driving Code

puts "how many restaurant are there?"
p shopping_center[:restaurants].length
puts "***"
puts "What is the name of the vegan restaurant?"
p shopping_center[:restaurants][:vegan_restaurant][:name]
puts "***"
puts "What does the vegan restaurant serve?"
p shopping_center[:restaurants][:vegan_restaurant][:menu_items][0..3]
puts "***"
puts "Change the name of the vegan restaurant to a more appropriate name."
shopping_center[:restaurants][:vegan_restaurant][:name] = "Hungry Vegan"
puts "***"
puts "What is the new name of the vegan restaurant?"
p shopping_center[:restaurants][:vegan_restaurant][:name]
puts "***"
puts "What is on the current menu at the Japanese restaurant?"
p shopping_center[:restaurants][:japanese_restaurant][:menu_items]
puts "Add sashimi platter to Japanese restaurant and print out new menu."
shopping_center[:restaurants][:japanese_restaurant][:menu_items].push('sashimi platter')
puts "new menus:"
p shopping_center[:restaurants][:japanese_restaurant][:menu_items]
puts "***"
puts "Barnes and Nobles hours have changed from 9:30-10pm, to 10am-11:30pm."
shopping_center[:retail][:books_retailer][:time_open] = "10am"
shopping_center[:retail][:books_retailer][:time_close] = "11:30pm"
puts "New time. Open at: #{shopping_center[:retail][:books_retailer][:time_open]} Close at: #{shopping_center[:retail][:books_retailer][:time_close]}  "
