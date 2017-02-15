$result = nil


def age_check_Pass(age, b_year) #verify age
	(Time.now.year - b_year) == age
end 


def name_check_Pass (name)
	!(name=="drake cula" || name=="tu fang")
end


def werewolf_verification()
	puts "What is your name?"
	name = gets.chomp.downcase

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	birth_year = gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y or N)"
	garlic_response=gets.chomp.downcase
	like_garlic = garlic_response == "y"

	puts "Would you like to enroll in the company's health insurance? (Y or N)"
	want_insurance = gets.chomp == "y"

	allergy = nil	
	until allergy == "sunshine" || allergy == "done"
		puts "What allergies do you have? (type Done when finished)"
		allergy = gets.chomp.downcase
		if allergy == "sunshine"
			$result = "Probably a vampire"
			return
		elsif allergy == "done"
			$result = nil
		else
			$result = nil
		end
	end

	if age_check_Pass(age, birth_year) && (like_garlic || want_insurance)
		$result = "Probably not a vampire."
	end

	if !age_check_Pass(age, birth_year) && (!like_garlic || !want_insurance)
		$result = "Probably a vampire."
	end

	if !age_check_Pass(age, birth_year) && !like_garlic && !want_insurance
		$result = "Almost certainly a vampire"
	end

	if !name_check_Pass(name)
		$result = "Clearly a vampire"
	end

	if $result == nil
		$result = "Results are inconclusive."
	end
end



puts "How many employees would you like to verify?"
i = no_employees = gets.chomp.to_i
	
while i > 0
	werewolf_verification
	p $result
	i = i-1
end

puts ""
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends"
