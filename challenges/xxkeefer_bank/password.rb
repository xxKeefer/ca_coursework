module Password

	def access_password(user_obj)
		if user_obj.password.nil?
			outcome=set_password(user_obj)
		else
			outcome=change_password(user_obj)
		end
		# outcome will be wether the password was updated, or unverified
		return outcome
	end

	def set_password(user_obj)
		puts `clear`
		puts "Please enter a password."
		print "PASSWORD: "
		user_obj.password=gets.strip
		puts `clear`
		return "PASSWORD UPDATED."
	end

	def change_password(user_obj)
		if check_password(user_obj)
			set_password(user_obj)
		else
			reject_password
		end
	end

	def check_password(user_obj)
		puts `clear`
		puts "To continue, enter current password."
		print "PASSWORD: "
		gets.strip == user_obj.password ? true : false
	end

	def reject_password()
		puts `clear`
		return "UNABLE TO VERIFY USER."
	end
end
