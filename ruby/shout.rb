#Module Definition
module Shout
	def yell_angrily(words)
		words.upcase + "!!!" + " :("
	end

	def yelling_happily(words)
		words + "!!!" + " :D"
	end
end


#Class Definition
class Politician
	include Shout
end

class Parent
	include Shout
end


#Driver Code
politician = Politician.new
p politician.yell_angrily("Make America Great Again")
p politician.yelling_happily("Make America Great Again")

parent = Parent.new
p parent.yell_angrily("I can't believe you did that!")
p parent.yelling_happily("I can't believe you did that!")




# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + " :D"
# 	end
# end



# Shout.yell_angrily("Yo Mama")
# Shout.yelling_happily("Yo Mama")

