# Combine Hashes

# Write a method which will take two different hashes and will
# return their combined value in a new hash.

# If the hash contains numbers, the numbers for matching keys should
# be added and the sum stored in the combined hash

# If the hash contains strings, the strings for matching keys should
# be concatenated and the result stored in the combined hash

# Example:
hash1 = { a: 3, b: 5, c: 1}
hash2 = { a: 5, b: 2, c: 14}
# combine_hashes => { a: 8, b: 7, c: 15 }

# Example:
 hash3 = {a: "a", b:"b", c:"c"}
 hash4 = {a: "a", b:"b", c:"c"}
# combine_hashes => {a: "aa", b:"bb", c:"cc"}


def combine_hashes(hash1, hash2)
  hash3= hash1.merge(hash2){|k, val1, val2| val1+val2}
  return hash3
end
puts combine_hashes(hash1,hash2)
puts combine_hashes(hash3,hash4)
