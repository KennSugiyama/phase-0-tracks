=begin   

#.each_with_index (value, index)
#.delete_at


p name_array = ["Mika", "Mom", "Dad", "Kenn", "Bobby", "Morin", "Michelle"]

name_array.each_with_index do |value, index|
	puts "#{index}: #{value}"
end

puts "Which person do you want to put to the end of the array?"
name_input = gets.chomp
p name_input

name_array.each_with_index do |name, index|
	if name == name_input
		name_array << name
		name_array.delete_at(index)
	else
		puts "wawa"
	end
end

puts "New arrangement:"
p name_array
=end




=begin: Go through an array and return the index where it maches a term
#op_index = equation_array.index	{|i| ("+-/*").include?(i)}
=end






=begin:   #.shuffle#####
p name_array = ["Mika", "Mom", "Dad", "Kenn", "Bobby", "Morin", "Michelle"]
p name_array.shuffle

p name_array.shuffle!
=end




=begin:    #random numbers#####
#float
10.times {p rand}

#integer
puts "random between 0 and 10"
10.times {p rand (10)}

# puts "random between 1 and 10"
10.times {1+rand(10)}

=end


=begin:  #Modules#####
# ModuleName.singleton_method - gets a list of all methods that is included in the module.

module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!!" + " :D"
	end
end


#https://devbootcamp.instructure.com/courses/143/assignments/7909?module_item_id=40829
Shout.yell_angrily("Yo Mama")
Shout.yelling_happily("Yo Mama")

# To Call the Module

require_relative "Shout"
Shout.yell_angrily("you crazy")
=end



=begin      HASHES###
hash_name = {
	key_name: value
}

hash_name.each do |key, value|
	puts "#{key} has a value of #{value}."
end
=end

#dont need to predefine hash.


=begin     Rspec####
# our calculator should ...
# add two integers and return an integer
# subtract two integers and return an integer
# multiply two integers and return an integer

# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'calculator'

describe Calculator do
  let(:calculator) { Calculator.new }

  it "adds two integers" do
    expect(calculator.add(3,4)).to eq 7
  end

  it "subtracts two integers" do
    expect(calculator.subtract(7,1)).to eq 6
  end

  it "multiplies two integers" do
    expect(calculator.multiply(2,3)).to eq 6
  end
end


to execute...  rspec -fd file_name_spec.rb
=end



def delete_item(item_to_delete)
		@todo_list.delete(item_to_delete)

attr_accessor :letters_used, :guesses_left  These attributes are readable and writable from outside of the class
attr_reader :word_in_progress, :key These attributes can be read outside of the class 

