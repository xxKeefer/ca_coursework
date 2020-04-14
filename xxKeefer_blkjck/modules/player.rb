require_relative "hand.rb"
require_relative "bank.rb"
class Player
	attr_accessor :bank, :hand
	attr_reader :name
	
	def initialize
		@name = "YOU"
		@bank = Bank.new()
		@hand = Hand.new()
	end
	
	def hit(deck)
		self.hand.collect(deck.deal)
	end
	
	def check_bust
		self.hand.value > 21 ? true : false
	end
	
	def bust
		puts `clear`
		self.hand.disp_hand
		self.disp_value
		p "! #{self.name} BUSTED !"
	end
	
	def prompt_action
		p "[0] : STAND | [1] : HIT"
		#####################
		#validate input later
		#####################
		choice = gets.strip.to_i
		return choice
	end
	
	def disp_value
		p "#{self.name} HAVE: #{self.hand.value}"
	end

end

class Dealer < Player
	
	def initialize
		super
		@name = "DEALER"
	end
	
	def disp_value
		p "#{self.name} HAS: #{self.hand.value}"
	end
	
	def ai
		self.hand.value < 17 ? true : false
	end
	
end
