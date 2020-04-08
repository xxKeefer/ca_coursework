# price = 40
# tasty = true

def lunch_check()
	print "Price is: $"
	price=gets.strip.to_i
	print "Is it tasty? "
	response=gets.strip
	tasty = response == "y" ? true : false

	(tasty && price < 50) || price <= 30 ? (return "I'll eat that!") : (return "No thanks to that.")
end

puts lunch_check()
