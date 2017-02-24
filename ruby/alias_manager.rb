#METHOD DEFINITION
def next_vowel (vowel) #returns the subsequent vowel
	vowel_array = ["a","e","i","o","u"]
	if vowel == "u"
		return "a"
	else
		next_vowel_index = vowel_array.index(vowel) + 1
		return vowel_array[next_vowel_index]
	end
end


def next_consonant (consonant) #returns the subsequent consonant
	consonant_array = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
	if consonant == "z"
		return "b"
	else
		next_consonant_index = consonant_array.index(consonant) + 1
		return consonant_array[next_consonant_index]
	end
end



#DRIVING CODE
repeat = true
until !repeat
	good_reponse = false
	until good_reponse
		#Get user's name
		puts "What is your full name?"
		original_name = gets.chomp
		full_name = original_name.downcase

		#deconstruct name into its components
		full_name = full_name.split (' ')
		full_name.insert(0,full_name[1])
		full_name.delete_at(2)
		full_name.map! {|name|
			name.split('')
		}


		#codify the original name
		full_name.map! do |name|
			name.map! do |letter|
				if letter =~ /[aeiou]/
					good_reponse = true
					next_vowel(letter)
				elsif letter =~ /[bcdfghjklmnpqrstvwxyz]/
					good_reponse = true
					next_consonant(letter)
				else
					puts "Letters only please."
					good_reponse = false
				end
			end
		end
	end

	#construct coded name
	full_name.map! do |name|
		name.join("").capitalize
	end
	code_name = full_name[0] + " " + full_name[1]

	secretNames = {
		realName: original_name,
		codeName: code_name
	}



	#output
	puts "The codified name for #{original_name} is #{code_name}!\n\n***\n\n"


	#repeat program or stop
	puts "Hit enter to do again, or type 'exit' to end"
	input = gets.chomp.downcase
	if input == "exit"
		repeat = false
	else
		repeat = true
	end
end



