def main
  # static variables
  max_score = 255
  positive=[]
  alergens = {
    :cats => {:score => 128, :alergic => false},
    :pollen => {:score => 64, :alergic => false},
    :choclate => {:score => 32, :alergic => false},
    :tomatoes => {:score => 16, :alergic => false},
    :strawberries => {:score => 8, :alergic => false},
    :shellfish => {:score => 4, :alergic => false},
    :peanuts => {:score => 2, :alergic => false},
    :eggs => {:score => 1, :alergic => false}
  }

  #prompt alergen score
  begin
    print "Please provide your alergen score: "
    score = gets.strip
    if validate_integer(score)
      score = score.to_i
      score < 0 ? (raise TooLowError, "Cannot have score less than zero.") : ""
      score > max_score ? (raise TooHighError, "Cannot have a score higher than #{max_score}") : ""
    end
  rescue => e
    puts e.message
    retry
  end

  #set true states for alergens indicated by score and creat array of all alergies
  alergens.each do |k,v|
    if score-v[:score] >= 0
      v[:alergic] = true
      positive.push("- #{k}")
      score-=v[:score]
    end
  end

  # either specific alergen or all alergens
  begin
  print "Query specific alergen: "
  alergen = gets.strip
    if validate_string(alergen)
      alergen_sym = alergen.downcase.to_sym
      if alergens.has_key?(alergen_sym) && alergens[alergen_sym][:alergic]
        puts "Yes, you are alergric to #{alergen.upcase}"
      elsif alergen.downcase == "all"
        puts "You are alergic to the following:"
        puts positive
      else
        raise UnrecognisedError, "Sorry, I don't have information on that alergen or it was not spelt correctly."
      end
    end
  rescue => e
    puts e.message
    retry
  end
end

##Validation methods

def validate_integer(input)
    if input.match(/[^\d-].*/).nil?
      true
    else
      raise NotNumericError, "That was not a valid number."
    end
end

def validate_string(input)
  if input.match(/[^a-zA-Z].*/).nil?
    true
  else
    raise InvalidStringError, "That input contained invalid characters."
  end
end

#errors

class NotNumericError < StandardError
end
class TooLowError < StandardError
end
class TooHighError < StandardError
end
class InvalidStringError < StandardError
end
class UnrecognisedError < StandardError
end


main
