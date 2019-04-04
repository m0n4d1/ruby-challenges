# Is it in the array strict mode

# Arrays can store all different data types. 
# These arrays can get quite large and it can get 
# quite difficult to keep track of what is in them. 
# Sometimes, we want extra flexibility in an array search, 
# and want control over casing.

# Create a function that will take a string, 
# an array, an additional argument called **strict**, 
# and will return whether or not that string exists in the array. 
# The additional argument, strict, is a boolean argument.

# * If strict is true, in_array_strict? should care about LEtTeR cASinG
# * If strict is false, in_array_strict? should not care about LEtTeR cASinG and should return true for any match

# Create Test::Unit tests in 27_in_array_strict_test.rb

# Examples:
# in_array_strict?("HeLLo", ["hi", "howdy", "Hello"], true) => false
# in_array_strict?("HeLLo", ["hi", "howdy", "Hello"], false) => true

## Optional
# Try completing this challenge without using any array 
# helper methods, except for .each

def tail arr
  arr[1..-1]
end

def downcase a
  a.downcase
end

def map(arr,fn)
  if arr > 1
    [fn(arr[0])] + map(tail(arr),fn)
  else
    [fn(arr[0])]
  end
end

def in_array_strict? (string, arr, strict)
  # your code goes here
	if arr.length > 0
    if strict
      string === arr[0] ? true : in_array_strict?(string,tail(arr),strict)
    else
      in_array_strict?(string.downcase, map(arr,downcase),true)
    end
  else
    false
  end
end
p in_array_strict?("test",["one","two","three","teSt","test"],true)
p in_array_strict?("test",["one","two","three","teSt"],true)

