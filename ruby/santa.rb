# CLASS DEFINITION
class	Santa	
	def initialize(gender, ethnicity, age)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudloph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
	end

	attr_reader :age, :ethnicity, :reindeer_ranking
	attr_accessor :gender

	def speak()
		puts "Ho,ho, ho! Haaaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "Yummm... that was a good #{cookie_type}"
	end

	def celebrate_birthday()
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.each_with_index do |name, index|
			if name == reindeer_name
				@reindeer_ranking << name
				@reindeer_ranking.delete_at(index)
			end
		end
	end
end


#DRIVER CODE
santas = []
gender_array = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity_array = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


puts "How many santas do you want to simulate?"
no_of_santas = gets.chomp.to_i
count = 0

#Generate Instances of Santas
until count == no_of_santas
	count += 1
	gender = gender_array[rand(gender_array.length)]
	ethnicity = ethnicity_array[rand(ethnicity_array.length)]
	age = rand(140)
	santa = Santa.new(gender, ethnicity, age)
	puts "\nSanta No. #{count}:"
	puts "Gender: #{santa.gender}"
	puts "Ethnicity: #{santa.ethnicity}"
	puts "Age: #{santa.age}"
	puts "---------\n"

end







#OLD CODE#

#old Class Definitions notes
	# def reindeer_ranking
	#   @reindeer_ranking
	# end

	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

	# def age
	#   @age
	# end

	# def gender
	# 	@gender
	# end

	# def ethnicity
	#   @ethnicity
	# end


#Practice Driver Code
# santa = Santa.new("agender", "black")

# p santa

# santa.speak
# santa.eat_milk_and_cookies("COOOOKIES")
# puts "----\n"
# puts "Santa was #{santa.age} years old"
# santa.celebrate_birthday
# puts "Now Santa is #{santa.age} years old"
# puts "----\n"
# puts "Santa's current reindeer ranking:" 
# p santa.reindeer_ranking
# puts "Who is Santa is pissed at?"
# bad_reindeer = gets.chomp
# santa.get_mad_at(bad_reindeer)
# puts "Santa's new reindeer ranking:"
# p santa.reindeer_ranking
# puts "----\n"
# puts "Santa's previous gender: #{santa.gender}"
# puts "what is Santa's gender?"
# santa.gender = gets.chomp
# puts "Santa's new gender: #{santa.gender}"





# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
# santas << Santa.new("male", "Marshan")
# santas << Santa.new("WingWang", "Pluto")

# p santas


# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# p santas.inspect

# kenn = Santa.new
# kenn.speak
# kenn.eat_milk_and_cookies("Chocolate Chip Cookie")



