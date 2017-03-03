#CLASS DEFINITION
class Puppy
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
  	num.times do
  		puts "woof"
  	end
  end

  def roll_over()
  	puts "roll over"
  end

  def dog_years(human_years)
  	dog_age = human_years*7
  	return dog_age
  end

  def sleep ()
  	puts "ZzzzZZZ"
  end

  def initialize()
  	# puts "Initializing new puppy instance..."
  end
end



class Cat
	def initialize()
		# puts "Initializing new cat instance..."
	end

	def meow(num)
		num.times do puts "meow"
		end
	end

	def fetch (toy)
		puts "The cat does NOT bring back #{toy}"
	end

end




# #CAT DRIVER CODE
# Sophie = Cat.new
# Sophie.meow(3)
# Sophie.fetch("mouse")




count = 0
litter_array = []
toy_array = ["mouse", "ball"]
num = 50

while count < num do
	litter_array << Cat.new
	count +=1
end


litter_array.each_with_index do |instance, index|
  puts "~~~~~ Cat Instance No. #{index+1} ~~~~~"
  if index % 2 == 0
    instance.fetch("ball")
  else
    instance.fetch("toy mouse")
  end
  instance.meow(rand (5))
end


# litter_array.each do |instance|
# 	instance.fetch("ball")
#   instance.meow(2)
# end



#PUPPY DRIVER CODE
# carlos = Puppy.new
# carlos.fetch("ball")

# carlos.speak(3)

# carlos.roll_over

# p carlos.dog_years(2)

# carlos.sleep 