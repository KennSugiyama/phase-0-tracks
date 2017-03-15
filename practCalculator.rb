10+20

30




def calculate(input)
	  input
	 test = input.split(" ")
	 integer1 = test[0].to_i
	operator = test [1]
	 integer2 = test [2].to_i

	if operator == "+"
		integer1 + integer2
	elsif operator == "-"
		integer1 - integer2
	elsif operator == "/"
		integer1 / integer2
	elsif operator == "*"
		integer1 * integer2
	else 
		puts "blah blah"
	end
end





p calculate("12 + 15")
p calculate("12 - 15")
p calculate("6 / 3")
p calculate("12 * 10")