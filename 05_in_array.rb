# Methods

# Write a method called 'in_array' which will take 
# two parameteres:
# One as a string and one as an array of strings

# Return a boolean indicationg whether or not the
# string is found in the array.

# Test your solution with:
# ruby tests/05_in_array_test.rb

# Example:
# "hello", ["hi","howdy","hello"] should return true.

#Built-in method
def in_array (needle, haystack)
  haystack.include?(needle)

rescue Exception => each
  p e
  return e
end


# Beast Mode:

# Redo the challenge but try solving it again in a different way.

#Itteration
def in_array (needle, haystack)
  has_needle = false 
  haystack.each do |item|
    if item == needle
      break has_needle = true
    else end
  end
  return has_needle 

rescue Exception => e
  p e
  return e
end

#recursion
def in_array (needle, haystack)
  if haystack == []
    return false
  elsif haystack[0] == needle 
    return true 
  else 
    in_array(needle, haystack.drop(1))
  end
  
rescue Exception => e
  p e
  return e
end