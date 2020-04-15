require "test/unit"
require_relative "invalid_words.rb"

class ChallangeTest < Test::Unit::TestCase
  def test_letter_count
    input = letter_count("word")
    assert_equal(input, "The word word has 4 letters in it.")
    input = letter_count(3)
    assert_equal(input, "Given 3, That is a Integer. Require a String.")
    input = letter_count(nil)
    assert_equal(input, "Given , That is a NilClass. Require a String.")
    input = letter_count(true)
    assert_equal(input, "Given true, That is a TrueClass. Require a String.")
    input = letter_count(false)
    assert_equal(input, "Given false, That is a FalseClass. Require a String.")
    input = letter_count(:symbol)
    assert_equal(input, "Given symbol, That is a Symbol. Require a String.")
  end

  def test_print_num_letters
    input = print_num_letters(["word", "Daniel"])
    assert_equal(input, ["The word word has 4 letters in it.", "The word Daniel has 6 letters in it."])
    input = print_num_letters(["word", 40])
    assert_equal(input, ["The word word has 4 letters in it.", "Given 40, That is a Integer. Require a String."])
  end


end
