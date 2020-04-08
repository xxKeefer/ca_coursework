module Balance
require_relative "password.rb"
include Password

	def check_bal(user_obj)
		if user_obj.password.nil?
			#ask for a password to be set if none has been provided yet before proceding
			return "Please set your password first with menu option 4."
		else
			#if user can provide current password, show balance esle reject
			Password.check_password(user_obj) ? display_bal(user_obj) : Password.reject_password
		end
	end

	def display_bal(user_obj)
		puts `clear`
		return "Your account balance is: $#{user_obj.balance}"
	end
end
