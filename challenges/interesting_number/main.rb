# Interesting number

# An interesting number is one with at least 3 digits,
# in which the digits are either incrementing or decrementing.

# Examples:
# interesting_number(789) => true
# interesting_number(321) => true
# interesting_number(798) => false
# interesting_number(6) => false
# interesting_number(23) => false

# When the digits are incrementing, 0 comes after 9:
# interesting_number(7890) => true
# When the digits are decrementing, 0 comes after 1:
# interesting_number(3210) => true

def interesting_number(number)
  numbers_arr = number.to_s.split(//).map { |e| e.to_i }
  return false if numbers_arr.length < 3
  mask = gen_mask(numbers_arr.length, numbers_arr.first, ascending?(numbers_arr))
  number.modulo(mask) == 0 ? true : false
end

def gen_mask(length, init, ascend)
  mask_arr = []
  i = 0
  if ascend
    while i < length
      mask_arr.push((init+i).modulo(10))
      i+=1
    end
  else
    while i < length
      mask_arr.push((init-i).modulo(10))
      i+=1
    end
  end
    mask_str = mask_arr.join
    mask = mask_str.to_i
    return mask
end

def ascending?(arr)
  if not arr.include?(0)
    arr.first<arr.last ? true : false
  else
    case arr[arr.find_index(0)-1]
    when 9
      true
    when 1
      false
    end
  end
end

interesting_number(123456789012345) ? (p "yay") :(p "nay")
interesting_number(1234068) ? (p "yay") :(p "nay")
