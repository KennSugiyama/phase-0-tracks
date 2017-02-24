# RELEASE 0
# METHOD DEFINITIONS
def search_array (array, num) #iterates through array and counts until the number is located
  count = 0
  while count <= array.length
  	array.each do |i|
  		if i != num
  			count +=1
  		else return count
  		end
  	end
  end
  	return nil
 end

# DRIVING CODE
puts "**** RELEASE 0: Implement a Simple Search **** \n\n"
puts "Please provide me with a list of numbers seperated by spaces"
number_list = gets.chomp.split(' ')
number_list.map! {|number| number = number.to_i}
puts "\n"
puts "For which number would you like the index?"
index = gets.chomp.to_i
puts "\n"
result = search_array(number_list,index)

puts "The index location of #{index} is #{result}."

puts "\n\n"




# RELEASE 1: FIBONACCI SEQUENCE
# METHOD DEFINITION
def fib_constructor (number) #Constructs out the fibonacci sequence until the given number of times
  count = 0 
  fib_sequence = [0,1]
  while count < number - 2
	  fib_sequence << fib_sequence[-1] + fib_sequence[-2]
	  count +=1
	end
	return fib_sequence
end

# DRIVING CODE
puts "**** RELEASE 1: Fibonacci Sequence **** \n \n"
puts "What number would you like to be Fibonacci sequenced?"
input_number = gets.chomp.to_i
fib_sequence = fib_constructor(input_number)
puts "\n"
puts "The first #{input_number} numbers of the Fibonacci Sequence is:"
p fib_sequence



# def fib_array_setup (number)
# 	fib = Array.new(number,0)
# 	fib[0] = 0
# 	fib[1] = 1
# 	p fib
# 	fib_constructor(fib)
# end

# def fib_constructor (fib_array)
# 	fib_array[1..-1].map! do |i|
# 		p fib_array[i] 
# 		p fib_array[i - 1] - fib_array[i - 2]
# 	end
# 	p fib_array
# end





# fib_array_setup (5)

