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
  	puts "Initializing new puppy instance..."
  end
end



class Cat
	def initialize()
		puts "Initializing new cat instance..."
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
litter = []
num = 50

while count < num do
	litter[count] = Cat.new
	count +=1
end


p litter


litter.each do |item|
	item.meow(3)
end



#PUPPY DRIVER CODE
carlos = Puppy.new
carlos.fetch("ball")

carlos.speak(3)

carlos.roll_over

p carlos.dog_years(2)

carlos.sleep 