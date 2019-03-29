# Isogram
# Difficulty: medium

# An isogram is a word that has no repeatting letters; 
# consecutive or non-consecutive.

# Implement a method that determines whether a string 
# that contains only letters is an isogram. 
# The function will take the string as input, and will 
# return either true or false.


# *E.g.* isogram?("hello") should return false

# *E.g.* isogram?("scary") should return true

def isogram?(input)
    if input.class == String
      isogram?(input.chars)
    else
      if input.length > 1
        input[0] != input[1] ? isogram?(input.drop(1)) : false
      else 
        true
      end
    end
end

# Test your code here
puts isogram?("hello") #should return false
puts isogram?("scary") #should return true
