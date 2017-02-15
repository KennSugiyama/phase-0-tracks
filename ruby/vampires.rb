




def name_check (name) #Verify name
	case 
	when name=="drake cula" || name=="tu fang"
		true
	else
		false
	end
end



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



def age_check_Pass(age, b_year) #verify age
	(Time.now.year - b_year) == age
end 


def name_check_Pass (name)
	!(name=="drake cula" || name=="tu fang")
end




if age_check_Pass(age, birth_year) && (like_garlic || want_insurance)
	result = "Probably not a vampire."
end

if !age_check_Pass(age, birth_year) && (!like_garlic || !want_insurance)
	result = "Probably a vampire."
end

if !age_check_Pass(age, birth_year) && !like_garlic && !want_insurance
	result = "Almost certainly a vampire"
end

if !name_check_Pass(name)
	result = "Clearly a vampire"
end

if result == nil
	result = "Results are inconclusive."
end

p result