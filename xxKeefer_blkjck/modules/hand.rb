require "colorize"

class Hand
	attr_reader :value
	attr_accessor :cards
	def initialize
		@cards=[]
		@size = @cards.size
		@value = 0
		@hide = []
	end

	def update_handsize
		@size = @cards.size
	end

	def update_handval
		aces = 0
		@value = 0
		for card in @cards
			if card[:pip] == "A "
				aces+=1
				next
			else
				@value += check_value(card[:pip])
			end
		end
		aces.times do
			@value += check_value("A ", aces)
		end
	end

	def check_value(pip, aces=1)
		case pip
			when "? "
			return 0
			when "2 "
			return 2
			when "3 "
			return 3
			when "4 "
			return 4
			when "5 "
			return 5
			when "6 "
			return 6
			when "7 "
			return 7
			when "8 "
			return 8
			when "9 "
			return 9
			when "10", "J ", "Q ", "K "
			return 10
			when "A "
			(@value + (11*aces))<=21 ? 11 : 1
		end
	end

	def collect(card)
		@cards.push(card)
		update_handval
	end

	def clear
		self.cards = []
	end

	def hide
		@hide.push(@cards.shift)
		update_handval
	end

	def unhide
		@cards.unshift(@hide.shift)
		update_handval
	end

	def disp_hand
		edge = ""
		top = ""
		botm = ""
		midd = ""
		if @hide.size == 1
			edge += "+--- ".colorize(:white)
			top  += "|X ? ".colorize(:white)
			botm += "|    ".colorize(:white)
			midd += "|    ".colorize(:white)
		end
		for card in @cards
			edge += card_color("+---------+ ", card)
			top  += card_color("|#{card[:pip]}#{card[:suit]}      | ", card)
			botm += card_color("|     #{card[:pip]}#{card[:suit]} | ", card)
			midd += card_color("|         | ", card)
		end
		puts edge
		puts top
		puts midd
		puts midd
		puts midd
		puts botm
		puts edge
	end

	def card_color(str, card)
		if card[:suit] == "♥" || card[:suit] == "♦"
			return str.colorize(:red)
		else
			return str.colorize(:blue)
		end
	end


end

#     +---------+ #edge
#     |2 ♥      | #top
#     |         | #middle ♥♦♣♠
#     |         |
#     |         |
#     |      ♥ 2| #bottom top.reverse
#     +---------+ #edge
