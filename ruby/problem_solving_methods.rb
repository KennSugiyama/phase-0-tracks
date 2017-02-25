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



=begin
# RELEASE 2: Sort an Array

1) I looked into the insertion sort method.
2) I actually find an animated gif explanation of the method that helped me understand this sort method from a higher-level conceptualization.  Although the details of this method was provided with diagrams, I ended up taking out a card deck and physically enacted the method to better understand it.
3) Started with excitement...  then frustration when I was getting lost in the text description...  and finally excitement as I was able to enact the algorithm with the cards.  My emotional state did affect my ability to effectively take in the information.  When I got frustrated, I set the timer for 10 minutes.  At the end of the ten minutes, I was still feeling frustrated so I took a break, which allowed me to return to the material with a more calm and open state of mind.
4)
 Pseudo Code:
1 Get an array ("Original Array")
2 Seed a result array ("Result Array") with Original Array[0]
3 Take the next index value (Original Array [1] and compare it to the the values of the Result Array, starting at ResultArray[0]
4 If it is less than the value, then insert it to preceeding position of the value being compared to.
5 if the number reaches the end of the array without being placed into the result arry, then push it into the end of the array
=end


def insert_sort(original_array)
  result_array = [original_array[0]]
  puts "Original Array: #{original_array}"
  original_array.each_with_index.map do |number,index|
      result_index = 0
      while result_index < result_array.length
          if index == 0
            break
          elsif number < result_array[result_index]
            result_array.insert(result_index,number)
            break
          else
            result_index +=1
          end
      end
      if result_index == result_array.length
        result_array << number
      end 
  end
  return result_array
end
      
      
puts "\n \n**** RELEASE 2: Sort an array (with Insertion Sort Method) **** \n \n"
result = insert_sort([10,2,23,150,0.6,5,9,0])
puts "Sorted Array: #{result}"

result = insert_sort([1,4,8,1,9,9,4,32])
puts "Sorted Array: #{result}"






