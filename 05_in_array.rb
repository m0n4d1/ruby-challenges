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
  haystack.include?(needle) #Use built-in include? Array method

rescue Exception => e 
  p e
  return e
end


# Beast Mode:

# Redo the challenge but try solving it again in a different way.

#Itteration
def in_array (needle, haystack)
  has_needle = false #initialize variable for storing if needle is found, default is false.
  haystack.each do |item| #for each item in haystack
    if item == needle #check if item is needle
      break has_needle = true #if item is needle set has_needle to true, exit loop
    else end #if item is not needle do nothing, goto next item.
  end
  return has_needle 

rescue Exception => e
  p e
  return e
end

#Recursion 
def in_array (needle, haystack)
  if haystack == [] #if array empty there are no items to check, needle not found, return false
    return false
  elsif haystack[0] == needle #if needle found return true
    return true 
  else 
    in_array(needle, haystack.drop(1)) #if first element is not needle, drop that elment and check again
  end
  
rescue Exception => e 
  p e
  return e
end