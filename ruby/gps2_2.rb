def create_list(items_string)
	grocery_list = {}
	split_items = items_string.split(" ")
	split_items.each do |item|
		grocery_list[item] = 1
	end
	return grocery_list
end



def add_item (list,item,quantity)
	list[item] = quantity
	return list	
end


#driver code

outside_grocery_list = create_list ("carrots apples cereal pizza")
p outside_grocery_list
p add_item(outside_grocery_list,"tomato",10)



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
