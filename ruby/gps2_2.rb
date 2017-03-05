def create_list(items_string)
	grocery_list = {}
	ind_items = items_string.split(" ")
	ind_items.each do |item|
		grocery_list[item] = 1
	end
	return grocery_list
end


def add_item (list,item,quantity)
	list[item] = quantity
	return list	
end


def remove_item(list,item)
	list.delete_if do |key, value|
		key == item
	end
end


def update_quantity(list,item,quantity)
	list[item] = quantity
	return list	
end


def print_list(list)
	puts "Shopping List"
	count = 1
	list.each do |key, value|
		puts "#{count} #{key}: #{value}"
		count += 1
	end
end


#driver code

outside_grocery_list = create_list ("carrots apples cereal pizza")
puts "Create list with carrots, apples, cereal, and pizza"
p outside_grocery_list
puts ""

puts "Add 10 tomatos to list."
p add_item(outside_grocery_list,"tomato",10)
puts ""

puts "Remove apples from the list."
p remove_item(outside_grocery_list,"apples")
puts ""

puts "Update quantity of carrots to 20"
p update_quantity(outside_grocery_list,"carrots",20)
puts ""

puts "Update quantity of tomatos to 20"
p update_quantity(outside_grocery_list,"tomato",5)
puts ""

puts "Print list:"
print_list(outside_grocery_list)


#pseudocode
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # put items into method
  # set default quantity
  # split out the words so that each word is its own item
  # put items into a hash
  # hash key - item
  # hash value - quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]





# Add item with a quantity to the list
#input (tomato 10)
#add to existing grocery_list hash
#output hash "carrots -1  apples-1 cereal-1  pizza-1  tomatgo -10")






# remove item from list
# update quantity for items in the list
# print the list



