def print_num_letters(words)
	counted = []
		words.each {|word| counted.push(letter_count(word))}
	return counted
end

def letter_count(word)
	begin
		raise WrongTypeError, "Given #{word}, That is a #{word.class}. Require a String." if word.class != String
	return "The word #{word} has #{word.length} letters in it."
	rescue WrongTypeError => e
		return e.message
	end
end

##ERRORS

class WrongTypeError < StandardError

end

##default call
puts print_num_letters(["Daniel","Australia","I","sdjhkjdsaghkldgjahkfhkjdfhkjagjhkjaglhkjlgdshkjdgkgkjkjgdkjshgldsj"])
puts print_num_letters(["Daniel","Australia","I","sdjhkjdsaghkldgjahkfhkjdfhkjagjhkjaglhkjlgdshkjdgkgkjkjgdkjshgldsj",9001])
puts print_num_letters(["Daniel",true,:some_symbol,"sdjhkjdsaghkldgjahkfhkjdfhkjagjhkjaglhkjlgdshkjdgkgkjkjgdkjshgldsj",9001])
