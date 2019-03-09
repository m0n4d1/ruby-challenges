# Included Once
#
# Write a method that takes an array and a string. Return
# true if the string is found in the array only once.
# Otherwise return false.
#
# What's the time complexity of your solution? Can it be improved?
#
# *** Whiteboard this first ***
#
# Difficulty: 4/10
#
# Example:
# includedOnce(['hello','hi','hi'], 'hi') -> false
# includedOnce(['hello','hi','hey'], 'hi') -> true
#
# Check your solution by running the tests:
# ruby tests/14_included_once_test.rb
#

def included_once(haystack, needle)
  
  single_needle = false
  haystack.each do |item|
    if item == needle
      if single_needle
        single_needle = false
        return single_needle
      else
        single_needle = true
      end
    end
  end
  return single_needle
end


