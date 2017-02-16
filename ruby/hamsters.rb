good_response = false


puts "What is the name of your hamster?"
name = gets.chomp.downcase
#name = 'bob'


until good_response
	puts "What is the volume level of #{name.capitalize}? (1 - 10)"
	vol = gets.chomp.to_i
	if vol >= 0 && vol <= 10
		break
	else
		puts "Please enter a volume between 0 and 10"
	end
end

puts "What color is #{name.capitalize}?"
color = gets.chomp.downcase


until good_response
	puts "Do you think #{name.capitalize} is a good candidate for adoption? (Y or N)"
	candidate_response = gets.chomp.downcase
	case candidate_response
	when "y"
		good_candidate = true
		break
	when "n"
		good_candidate = false
		break
	else
		puts "please respond with a Y or a N"
	end
end



until good_response
	puts "How old is #{name.capitalize} "
	age_response = gets.chomp.to_i

	case age_response
	when (0)
		age = nil
		good_response = true
	when (1...10)
		age = age_response
		good_response = true
	when (11...100000000)
		puts "Is #{name.capitalize} really #{age_response} years old?! (y or n)"
		response = gets.chomp.downcase
		if response == "y"
			age = age_response
			good_response = true
		else
			good_response = false
		end
	end
end


puts ""
puts ""
puts "******** OUTPUT ********"
puts "Name: #{name.capitalize}"
puts "Age (years): #{age}"
puts "Fur Color: #{color.capitalize}"	
puts "Volume Level: #{vol}"
puts "Good Candidate for adoption? #{good_candidate}"


