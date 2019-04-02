# Max Min In String

# There are plenty of incredible array methods built into 
# ruby that allow us to compare and run calculations on 
# arrays full of numbers. Sometimes, we don't receive these 
# numbers in an array, and instead receive it as a string of 
# space seperated numbers.

# Write a method that will take a string of space seperated 
# numbers as input, and return the highest and lowest number 
# from this string.

# *E.g.* max_min_in_string("5 2 9 8 23 1") should return "23 1"
# *E.g.* max_min_in_string("15 4 4 38 -9") should return "38 -9"

# Write your own test file for this challenge using Test::Unit

def max arr
  arr.length > 1 ? max( arr[0] < arr[1] ? arr.drop(1) : [arr[0]].concat(arr.drop(2))) : arr[0]
end

def min arr
  arr.length > 1 ? min( arr[0] > arr[1] ? arr.drop(1) : [arr[0]].concat(arr.drop(2))) : arr[0]
end

def max_min num_string
  # your code goes here
  if num_string.class == String
    max_min num_string.chars
  else
    "#{max(num_string)} #{ min(num_string)}"
  end
end

puts max_min [2,5,3,7,5,6,55]
