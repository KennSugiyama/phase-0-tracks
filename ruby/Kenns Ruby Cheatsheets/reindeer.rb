class	Reindeer
	#SUGAR: attr_reader
	attr_reader :name, :location
	#write me a getter method for bothg name and location
	attr_accessor :name
	#name is writable outside of the class
	#allows for both reading and writing, so technically do not need name for attr_reader
	# attr_writer :name
	#name will be writable an attribute from outside the class but not be able to read it.  NOT COMMON.


	def initialize(name)
		@name = name
		@location = "North Pole"
	end

	# #Getter Methods for attributes
	# #Getter Methods for getting attributes outside of the class
	# #Getter Methods make attributes readable
	# def name
	# 	@name
	# end

	# def location
	# 	@location
	# end






	#Setter Method
	#Setter Methods make something writable
	#Setter Methods can make an attribute set from outside the class
	#make it possible to assign directly
	# def name=(new_name)
	# 	@name = new_name
	# end

	def take_off(altitude)
		puts "#{@name} took off from #{@location}."
		puts "#{@name} ascended to #{altitude} feet."
	end

	def land(location)
		puts "#{@name} landed safely in #{location}"
		@location = location
	end
end


reindeer = Reindeer.new("Dasher")
puts "#{reindeer.name} is in #{reindeer.location}."
reindeer.take_off(3000)
reindeer.land("San Francisco")
reindeer.name = "The Reindeer Formely Known as Dasher"
puts "#{reindeer.name} is in #{reindeer.location}."

