# def block_method
# 	puts "I am a method"
# 	yield ("Kenn")
# end

# block_method {|name| puts "I am #{name}'s Block"}

##RELEASE 1 PRACTICE

# letters = ["a", "b", "c", "d", "e"]
# puts "Original Data:"
# p letters

# letters.each do |item| 
# 	p item

# end


# puts "After .each call:"
# p letters


# numbers = {
# 	1 => "one",
# 	2 => "two",
# 	3 => "three"
# }


# numbers.each do |digit, word|
# 	puts "#{digit} is spelt #{word}"
# end	

#RELEASE 1 DO THE THING
# array_years = [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]

# sushi = {
# 	salmon: "sake",
# 	tuna: "maguro",
# 	squid: "ika",
# 	octopus: "tako",
# 	yellowtale: "hamachi"
# }

# puts "original data"
# p array_years

# array_years.each {|year| p year + 5}

# puts "afer the .each call:"
# p array_years

# array_years.map! do |year|
# 	year + 5
# end

# p array_years


# sushi.each do |english, japanese|
# 	puts "#{japanese} is #{english} in Japanese"
# end

#RELEASE 2 DO THE THING


array_years = [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]

sushi = {
	salmon: "sake",
	tuna: "maguro",
	squid: "ika",
	octopus: "tako",
	yellowtale: "hamachi"
}

puts "1) Delete items that meet a condition"
puts "a) Delete if less than 2012:"
puts "original data:"
p array_years
puts ""
puts "after .reject call:"
output = array_years.reject do |year|
	year < 2012
end

p output

puts ""
puts "b) Delete if Japanese word contains the letter i."
puts "original data:"
p sushi
puts ""
puts "after .reject call:"
output = sushi.reject do |english, japanese|
	japanese.include? "i"
end
p output
puts""
puts "******"
puts""
puts "2) Filter items that meet a condition"
puts "a) Filtered for even numbers:"
puts "original data:"
p array_years
puts ""
puts "after .select call:"
output = array_years.select do |year|
	year.even?
end

p output

puts ""
puts "b) Keep if Japanese word containing the letter o."
puts "original data:"
p sushi
puts ""
puts "after .select call:"
output = sushi.select do |english, japanese|
	japanese.include? "o"
end
p output
puts""
puts "******"
puts""

puts "3) Different Filter method"
puts "a) Filtered for odd numbers:"
puts "original data:"
p array_years
puts ""
puts "after .keep_if call:"
output = array_years.keep_if do |year|
	year.odd?
end
p array_years
p output

puts ""
puts "b) Keep if English word containing the letter o."
puts "original data:"
p sushi
puts ""
puts "destructive not possible with hash."

puts""
puts "******"
puts""
array_years = [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]
puts "4) Remove items until condition is false"
puts "a) Remove years until year is not less than 2014:"
puts "original data:"
p array_years
puts ""
puts "after .take_while call:"
output = array_years.take_while do |year|
	year <= 2014
end

p output

puts ""
puts "b) Remove items until the length of the japanese word is less than 4 characters."
puts "original data:"
p sushi
puts ""
output = sushi.take_while do |english, japanese|
	japanese.length >=4
end
p output
puts""
puts "******"
puts""

# output_while = array_one.take_while do |item|
# 	item < 150
# 	end



# puts "Modified Data:"
# p array_one
# puts "1) Output that deleted condition <=150: #{reject(array_one)}"
# puts "2) Output filtering satsified condition >200: #{output_select}"
# puts "3) Output filtering no.2 satsified condition where item is >=50 and <200: #{output_keep}"
# puts "4)  #{output_while}"







# array1.select do |item|
# 	item > 20
# 	puts item
# end

# puts "new data:"
# p array1




# fruits = ["bananas", "apples", "pinapples", "melons", "strawberries"]



# japanese_numbers = {
# 	one: "ichi",
# 	two: "ni",
# 	three: "san",
# 	four: "yon",
# 	five: "go"
# }


# puts "USING EACH: Original Data:"
# p fruits
# fruits.each {|i| puts "#{i} are yummy."}
# puts "New Data:"
# p fruits




# 3.times {puts ""}
# puts "USING MAP: Original Data:"
# p fruits
# fruits.map {|i| puts "#{i} are yummy."}
# puts "New Data:"
# p fruits


# 3.times {puts ""}
# puts "USING MAP!: Original Data:"
# p fruits

# fruits.map! {|i| puts "#{i} are yummy."}

# puts "New Data:"
# p fruits




