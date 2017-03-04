class WerdGame
	attr_accessor :letters_used, :guesses_left, :secret_word
	attr_reader :word_in_progress, :key, :is_over

	def initialize(word)
		@is_over = false
		@key = word.split("")
		@secret_word = word
		@guesses_left = word.length
		@word_in_progress = Array.new(@guesses_left,"_")
		@letters_used = []
	end

	def letter_category(letter)
		if @letters_used.index(letter)
			puts "#{letter.upcase} has already been attempted."
			status = "already used"
		elsif @key.index(letter)
			@letters_used << letter
			puts "Thumbs up to you!"
			puts "-----"
			good_letter(letter)
		else
			@guesses_left -= 1
			puts "Sorry, #{letter.upcase} is not in the secret word."
			puts "-----"
			@letters_used << letter
		end
	end

	def good_letter(letter)
		@key.each_with_index do |value, index|
			if letter == value
				@word_in_progress[index] = letter
			end
		end
		@letters_used << letter
	end

	def bad_letter(letter)
		@key.each_with_index do |value, index|
			if letter == value
				# @word_in_progress.delete_at(index)
				@word_in_progress[index] = letter
			end
		end
	end
end



#Driver Code
#get the secret word from player 1
puts "Player 1, please enter your secret word."
game = WerdGame.new(gets.chomp)
50.times {puts"*"}


#player 2 can guess until s/he runs out of chances
until game.guesses_left < 1
	puts "What letter do you think is in the word?"
	
	puts "Secret Word: #{game.word_in_progress.join(" ")}"
	puts ""
	puts "You have #{game.guesses_left} chances remaining."
	puts ""
	puts "You have already attempted the following letters:"
	p game.letters_used.uniq.sort.join(",")
	puts ""
	input = gets.chomp
	game.letter_category(input)
	if game.word_in_progress.join("") == game.key.join("")
		break
	end
end

#Win or Lose
if game.guesses_left > 0
	puts "#{game.key.join("")}!  You got it! YOU WIN!"
else
	puts "You lose."
	puts "The secret word was #{game.key.join("")}"
end



