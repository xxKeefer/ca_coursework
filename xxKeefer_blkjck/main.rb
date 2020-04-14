require_relative "./modules/deck.rb"
require_relative "./modules/player.rb"



def game
	puts `clear`
	player = Player.new()
	dealer = Dealer.new()
	deck = Deck.new()

	all_bust = false
	until all_bust

		2.times do
			dealer.hand.collect(deck.deal)
			player.hand.collect(deck.deal)
		end
		dealer.hand.hide

		turn = "player"

		while turn == "player"
			display_info(player, dealer)

			choice = player.prompt_action
			case choice
				when 1
				player.hit(deck)
				when 0
				player.stand
				dealer.hand.unhide
				all_bust = true
				turn = "dealer"
			end
			if player.check_bust
				player.bust
				all_bust = true
				break
			end
		end

		while turn == "dealer"
			display_info(player, dealer)
			if dealer.ai
				dealer.hit(deck)
				if dealer.check_bust
					dealer.bust
				end
			else
				dealer.stand
				turn = "checkwin"
				all_bust = true
				break
			end
			wait_for_ack
		end

		puts checkwin(player,dealer)
		wait_for_ack

	end
end

def wait_for_ack
	puts "--- PRESS ENTER TO CONTINUE ---"
	gets
end

def display_info(player, dealer)
	puts `clear`
	dealer.disp_value
	dealer.hand.disp_hand
	player.hand.disp_hand
	player.disp_value
end

def checkwin(player, dealer)
	# puts "checking win.. \ndealer_busted?: #{dealer.busted}\ndealer_stood?: #{dealer.stood}\nplayer_busted?: #{player.busted}\nplayer_stood?: #{player.stood}\ndealer: #{dealer.hand.value} VS #{player.hand.value} player"
	# wait_for_ack
	winner = ""
	if player.busted
		player.bust_msg
		winner = "#{dealer.name} WINS!"
	elsif dealer.busted
		dealer.bust_msg
		winner = "#{player.name} WINS!"
	else
		if player.stood && dealer.stood
			if player.hand.value > dealer.hand.value
				winner = "#{player.name} WINS!"
			elsif player.hand.value < dealer.hand.value
				winner = "#{dealer.name} WINS!"
			else
				winner = "IT'S A DRAW!"
			end
		end
	end
	return winner
end

game
