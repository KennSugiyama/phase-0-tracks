# Release 4 response
# The nested encrypt and decrypt method works because it first encrypts swordfish, and then the second method decrypts it again.  It essentially just reverses the nested method, which is the first method to get executed.

# METHOD DECLARATIONS

def encrypt(word) #To encrypt a word
	i = 0
	secret_word = ""
		while i < word.length
		if word [i] == "z"
		  letter = "a"
		else
		  letter = word[i].next
		end
		secret_word += letter
		i += 1 
	end
	# p secret_word
	puts "Your encrypted password is: #{secret_word}"
end


def decrypt (word) #To decrypt a word
	i = 0
	cipher = "abcdefghijklmnopqrstuvwxyz"
	decrypted_word = ""
	while i < word.length
		key = cipher.index(word[i])-1
		decrypted_word += cipher[key]
		i += 1
	end
	# p decrypted_word
	puts "Your decrypted password is: #{decrypted_word}"
end



#DRIVER CODE#



good_response = false
until good_response
	puts "Would you like to encrypt or decrypt your password?" 
	response = gets.chomp.downcase
	if response == "encrypt"
		p "What is your password that you want to encrypt?"
		encrypt (gets.chomp)
		good_response = true
	elsif response == "decrypt"
		p "What is your password that you want to decrypt?"
		decrypt (gets.chomp)
		good_response = true
	else
		p "Please answer with 'decrypt' or 'encrypt'"
	end
end

			


# Would you like to decrupt or encrypt a password? [response]
# If the response is encrypt THEN ask for the word and run encrypt Method
# If the response is decrypt, THEN ask for the word and run decrypt method.
# If anything else, then ask the question again.

# print the result