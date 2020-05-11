# frozen_string_literal: true

def prime_number(number)
  # guard clause: if number 2 is given larget prime is 2
  return 2 if number == 2

  # generate a list of numbers from 2 to the number given by user input
  nums = (2..number).to_a
  i = 0
  multiplier = 1
  while multiplier <= nums.last
    while i < nums.length
      # delete any indexes that are equal to a multiple of nums[i]
      nums.reject! { |test_index| nums[i] * multiplier == test_index }
      i += 1
    end
    multiplier += 1
    i = 0
  end
  nums.last
end
prime_number(gets.strip.to_i)
