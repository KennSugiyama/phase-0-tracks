name=nil
vol=0
color=nil
good_candidate=nil
age=0




puts "What is the name of your hamster?"
name=gets.chomp.downcase


until vol >= 1 && vol <=10
	puts "What is the volume level of #{name.capitalize}? (1 - 10)"
	vol=gets.chomp.to_i
	if vol <1 || vol >10
		puts "Your response must be between 1 and 10"	
	end		
end


puts "What color is #{name.capitalize}?"
color=gets.chomp.downcase


until good_candidate !=nil
	puts "Do you think #{name.capitalize} is a good candidate for adoption? (Y or N)"
	good_candidate=gets.chomp.downcase
	if good_candidate == "y"
		good_candidate = true
	elsif good_candidate == "n"
		good_candidate = false
	else
		puts "Please answer with a 'Y' or an 'N'"
		good_candidate=nil
	end
end


until age.to_i > 0 || age.to_s == "unknown" || age.to_s == "Less than a year old"
	puts "How old is #{name.capitalize} (in years)?"
	age=gets.chomp.to_i
	if age == 0
		age = age.to_s
		puts "Is #{name.capitalize} less than a year old? (Y or N)"
		response=gets.chomp.downcase
		if response == "y"
			age = "Less than a year old".to_s
		else 
			puts "Do you know how old #{name.capitalize} is? (Y or N)"
			response=gets.chomp.downcase
			if response=="n"
				age="unknown"
			else
				puts "Please respond with a 'Y' or a 'N'"
			end
		end
	else
		puts "Please respond with a 'Y' or a 'N'"		
	end
end

puts ""
puts ""
puts "******** OUTPUT ********"
puts name.capitalize
puts "Age: #{age}"
puts "Fur Color: #{color.capitalize}"	
puts "Volume Level: #{vol}"
puts "Good Candidate for adoption? #{good_candidate}"



