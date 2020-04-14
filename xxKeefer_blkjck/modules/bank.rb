
class Bank
	attr_accessor :funds
	
	def initialize
		@funds = 0
	end
	
	def add(value)
		until val_num(value)
			p "[ERROR]: Input was not a number."
		end
		@funds += value
		p "added $#{value} to bank, new total: $#{@funds}"
	end
	
	def bet(value)
		@funds -= value
		p "betted $#{value}, new total: $#{@funds}"
	end
	
	##maybe make a module for this
	def val_num(input)
		input.match(/[^\d].*/).nil? ? true : false
	end
end
