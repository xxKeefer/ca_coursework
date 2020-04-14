require_relative "hand.rb"
require_relative "bank.rb"
class Player
	attr_accessor :bank, :hand, :busted, :stood
	attr_reader :name

	def initialize
		@name = "YOU"
		@bank = Bank.new()
		@hand = Hand.new()
		@busted = false
		@stood = false
	end

	def hit(deck)
		self.hand.collect(deck.deal)
	end

	def stand
		self.stood = true
	end

	def check_bust
		self.hand.value > 21 ? true : false
	end

	def bust
		self.busted = true
	end

	def bust_msg
		puts "-"*50
		self.hand.disp_hand
		self.disp_value
		puts "! #{self.name} BUSTED !"
	end

	def prompt_action(*choice)
		puts "[0] : #{choice[0].upcase} | [1] : #{choice[1].upcase}"
		#####################
		#validate input later
		#####################
		choice = gets.strip.to_i
		return choice
	end


	def disp_value
		puts "#{self.name} HAVE: #{self.hand.value}"
	end

end

class Dealer < Player

	def initialize
		super
		@name = "DEALER"
	end

	def disp_value
		puts "#{self.name} HAS: #{self.hand.value}"
	end

	def ai
		self.hand.value < 17 ? true : false
	end

end
