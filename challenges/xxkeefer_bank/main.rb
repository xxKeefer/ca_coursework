# Write a program to implement a simple bank account.
# See brief in <>Banking App in the ED lesson: https://edstem.org/courses/4296/lessons/1846/slides/13518
# to test app, open your terminal and run "ruby bank.rb"
# ask me question @ Extra Coder Activities | https://discord.gg/E2C9fa2
# <3 ---xxKeefer.

#require modules to keep main app clean
#modules are code blocks that can be referenced
#by your code with the keyword "require"
#i use require_relative here because the files
#i am reference exist in the same directory as each other
#once you require, you also have to "include" the module
require_relative "password.rb"
include Password
require_relative "balance.rb"
include Balance
require_relative "funds.rb"
include Funds

# again another adv concept here. I am defining a new class
# instead of an array or string or whatever i have defined a "user"
# the user has a password and a balance

# user info
require_relative "user.rb"
user=User.new()
user.password = nil
user.balance = 0

def banking_app(user)
	#menu options
		menu={
		1=> {display: "Check Balance."},
		2=> {display: "Deposit Funds."},
		3=> {display: "Withdraw Funds."},
		4=> {display: "Change/Set Password."},
		5=> {display: "Exit."}
		}

	#exit condition
	quit = false

	puts `clear`
	puts "Welcome to xxKeefer Bank."
	#run loop
	while !quit
		#run cycle
		puts "How can we help with your account?"
		#prints menu options to screen retrieved from menu hash
		menu.each_key {|key| puts "#{key} : #{menu[key][:display]}"}


		#gets user inupt to select menu option
		choice=gets.strip.to_i

		#case statement runs various declare methods further down code
		#to perform account actions
		case choice
			when 1
				puts `clear`
				puts Balance.check_bal(user)
				puts "-"*15
			when 2
				puts `clear`
				puts Funds.deposit(user)
				puts "-"*15
			when 3
				puts `clear`
				puts Funds.withdraw(user)
				puts "-"*15
			when 4
				puts Password.access_password(user)
				puts "-"*15
			when 5
				puts `clear`
				puts "Thanks for using xxKeefer Bank."
				puts "-"*15
				quit=true
		else
			puts `clear`
			puts "--!Err: [Input]: Sorry, That was an INVALID menu option."
			puts "-"*15
		end
	end
end

banking_app(user)
