# Palindrome

# A palindrome is a string that is exactly the same forwards
# as it is backwards, like "mom" or "racecar".

# Add tests to the 16_palindrome_test.rb file, inside the test folder.
# The test will check your method takes a word as a string and return 
# a boolean indicating whether or not the word is a palindrome.

# If your having trouble writing tests, look over previous morning challenges.

# Once you have done this, try to write the method below and check
# your code by running your tests.

# Example:
# palindrome("hello") should return false
# palindrome("racecar") should return true

# Check your solution by running the tests:
# ruby tests/16_palindrome_test.rb


#built-in method
def palindrome (string)
  string == string.reverse
end

#iterative 
def palindrome (string)
  (string.length/2).floor.times do |i|
    string[i] == string[-i -1] ? next : (return false)
  end
  return true
end

#recusive 
def palindrome (string)
  p string
  if string.class == String 
    palindrome(string.chars) 
  elsif !string || string.length == 1
    return true
  elsif string[0] == string[-1] 
    palindrome(string[1..-2])
  else
    return false
  end
end
