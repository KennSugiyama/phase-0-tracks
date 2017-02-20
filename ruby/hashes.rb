Client_Profiles = {
	full_name: "",
	address: "",
	zip_code: "",
	age: "",
	no_of_children: "",
	decore_theme: "",
	has_pets: ""
}


def keyEdit (parameter1)
puts "What value do you want to give #{parameter1}?"
Client_Profiles[parameter1] = gets.chomp
end


# 1) Prompt designer for client information
puts "Client's Full Name:"
Client_Profiles[:full_name] = gets.chomp
puts "Client's address:"
Client_Profiles[:address] = gets.chomp
puts "Zip Code"
Client_Profiles[:zip_code] = gets.chomp.to_i
puts "Clients' Age"
Client_Profiles[:age] = gets.chomp.to_i
puts "Number of Children"
Client_Profiles[:no_of_children] = gets.chomp.to_i
puts "Decor Theme:"
Client_Profiles[:decore_theme] = gets.chomp	

good_response = false
until good_response
	puts "Has pets (y or n)?"
	response = gets.chomp
	if response == "y"
		good_response = true
		Client_Profiles[:has_pets] = true
	elsif response == "n"
		good_response = true
		Client_Profiles[:has_pets] = false
	else
		puts "please answer with 'y' or 'n'."
		good_response = false
	end
end

puts "You have entered the following information:"
p Client_Profiles
puts ""
puts ""


good_response = false
until good_response
	puts "Would you like to make any changes? (y or n)?"
	response = gets.chomp
	if response == "y"
		good_response = true
		puts " Which key do you want to edit?"
		keyEdit (gets.chomp)
		# METHOD To EDIT HASH
	elsif response == "n"
		good_response = true
	else
		puts "please answer with 'y' or 'n'."
		good_response = false
	end
end


puts "Latest Version:"
p Client_Profiles
puts ""
puts ""

# 2) Convert input into appropriate data type
# 3) After finished answering all the questions, Print the hash on the screen 
# 4) give user opportunity to update key
# 5) Print the last version of the hash










# PSEUDO-CODE:
# Input
# -client's name? (string)
# -Client's age (integer)
# -Number of children (integer)
# -Decore Theme (string)
# -Has pets? (boolean)
# -Zip code (ineger)
# -Address (string)



# Processing
# 1) Prompt designer for client information
# 2) Convert iput into appropriate data type
# 3) After finished answering all the questions, Print the hash on the screen 
# 4) give user opportunity to update key
# 5) Print the last version of the hash

