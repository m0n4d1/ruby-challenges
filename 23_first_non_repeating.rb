# Find the first non-repeated character
# Difficulty: medium

# String methods are an incredibly powerful way to 
# validate and control user input.

# Write a method that will find the first non-repeated 
# character in a String. 
# Return false if only repeats are found. 

# *Try writing this by hand first*. 
# Confusing methods like this can become a lot more simple after 
# they are written by hand. 


#*E.g.* first-non-repeat("aaaabbbcccdeeefgh") should return 'd'

#*E.g.* first-non-repeat("wwwhhhggge") should return 'e'

#*E.g.* first-non-repeat("wwwhhhggg") should return false


## Optional
# If given a long string, this would take a fair chunk of computing power, 
# as it would have to go over every character. Can you return on the first 
# non-repeat, without checking every other letter?


def drop_adjacent_duplicates(arr,x=2)
  arr[0] == arr[x] ? drop_adjacent_duplicates(arr,x+1) : arr.drop(x) 
end

def first_non_repeating input
  if input.class == String
    first_non_repeating input.chars
  else
    if input.length < 1
      false
    elsif input.length > 1
      input[0] == input[1] ? first_non_repeating(drop_adjacent_duplicates(input)) : input[0]
    else
      input
    end
  end
end

# Test your code here
puts first_non_repeating("aaaabbbcccdeeefgh")
puts first_non_repeating("wwwhhhggge")
puts first_non_repeating("wwwhhhggg")
