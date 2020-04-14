class Deck
	attr_reader :cards_left
	attr_accessor :cards
	def initialize(decks_in_play = 1)
		@pips = ["A ", "2 ", "3 ", "4 ", "5 ", "6 ", "7 ", "8 ", "9 ", "10", "J ", "Q ", "K "]
		@suits = {:s => "♠", :c => "♣", :h => "♥", :d => "♦"}
		@cards = []
		decks_in_play.times do
			gen_deck
		end
	end

	def gen_deck
		@cards = []
		for p in @pips
			@suits.each_value do |s|
				@cards.push({:suit => s, :pip => p})
			end
		end
		@cards = @cards.shuffle
	end

	def update_cards_left
		@cards_left = @cards.size
	end

	def deal
		self.cards.pop
	end

	def test
		p @cards
	end
end
