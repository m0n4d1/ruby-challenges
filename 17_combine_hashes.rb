# Combine Hashes

# Write a method which will take two different hashes and will
# return their combined value in a new hash.

# If the hash contains numbers, the numbers for matching keys should
# be added and the sum stored in the combined hash

# If the hash contains strings, the strings for matching keys should
# be concatenated and the result stored in the combined hash

# Example:
# hash1 = { a: 3, b: 5, c: 1}
# hash2 = { a: 5, b: 2, c: 14}
# combine_hashes => { a: 8, b: 7, c: 15 }

# Example: 
# hash1 = {a: "a", b:"b", c:"c"}
# hash2 = {a: "a", b:"b", c:"c"}
# combine_hashes => {a: "aa", b:"bb", c:"cc"}



# Test your solution with ruby tests/17_combine_hashes.rb


def maybe_add(a,b)
  a && b ? a + b : a || b
end

def combine_hashes(hash1, hash2)
  Hash[ (hash1.keys | hash2.keys).map { |x| [x, maybe_add(hash1[x],hash2[x])] } ]
end

hash1 = {a: 1, b: 3}
hash2 = {b: 3, c: 4}

hash3 = {a: "string1", b: "string2"}
hash4 = {b: "string3", c: "string4"}

p combine_hashes(hash1,hash2)
p combine_hashes(hash3,hash4)