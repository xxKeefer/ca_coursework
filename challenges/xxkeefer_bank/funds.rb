module Funds
require_relative "password.rb"
include Password
require_relative "balance.rb"
include Balance

	def deposit(user_obj)
		if user_obj.password.nil?
			#ask for a password to be set if none has been provided yet before proceding
			return "Please set your password first with menu option 4."
		else
			if check_password(user_obj)
				check=true
				while check
					puts "How much would you like to deposit today?"
					print "Amount: $"
					value=gets.strip
					if validate_dollars(value)
						#validate amount given is a dollar value and a whole number
						add_dollars(user_obj, value)
						check=false
					else
						puts `clear`
						reject_dollars
					end
				end
				puts `clear`
				return "Deposited: $#{value}. New Balance: $#{user_obj.balance}."
			else
				reject_password
			end
		end
	end

	def withdraw(user_obj)
		if user_obj.password.nil?
			#ask for a password to be set if none has been provided yet before proceding
			return "Please set your password first with menu option 4."
		else
			if check_password(user_obj)
				#if user can give the current password, proceed else reject
				check=true
				while check
					puts "How much would you like to withdraw today?"
					print "Amount: $"
					value=gets.strip
					if validate_dollars(value)
						#validate amount given is a dollar value and a whole number
						if minus_dollars(user_obj, value)
							#check is user has enough money to withdraw amount requested
							check=false
						else
							puts `clear`
							insuficient_dollars
						end
					else
						puts `clear`
						reject_dollars
					end
				end
				puts `clear`
				return "Withdrawn: $#{value}. New Balance: $#{user_obj.balance}."
			else
				reject_password
			end
		end
	end

	def validate_dollars(value)
		# if input includes chars that aren't digits return false
		value.match(/[^\d].*/).nil? ? true : false
	end

	def reject_dollars()
		puts "--!Err: [Input]: Amount entered was eiter not whole dollar amount not a number."
	end

	def insuficient_dollars()
		puts "--!Err: [Funds]: Amount entered was more than you have in account."
	end

	def add_dollars(user_obj, value)
		user_obj.balance+=value.to_i
	end

	def minus_dollars(user_obj, value)
		# if has enough balance, subtract funds and then return truw. if funds not witdrawn return false
		if check_dollars(user_obj, value)
			user_obj.balance-=value.to_i
			return true
		else
			return false
		end
	end

	def check_dollars(user_obj, value)
		# If value to be withdrawn is more than there is in users balance return false
		if value.to_i<=user_obj.balance
			return true
		else
			return false
		end
	end
end
