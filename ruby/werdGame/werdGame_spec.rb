require_relative 'werdGame.rb'
	
describe WerdGame do
	let(:game) {WerdGame.new("mango")}

	it "gives player 2 as many chances as the length of the word" do
		expect(game.guesses_left).to eq 5
	end

	it "allows player to give it a word to be guessed" do
		expect(game.secret_word).to eq "mango"
	end

	it "checks if game is over" do
		expect(game.is_over).to eq false
	end

	it "creates a solution key using an array" do
		expect(game.key).to eq ["m","a","n","g","o"]
	end

	it "creates an array for the player to enter letters" do
		expect(game.word_in_progress).to eq ["_","_","_","_","_"]
	end

	it "checks to see if a word has already been used" do
		game.letter_category("a")
		expect(game.letter_category("a")).to eq "already used"
	end

end


