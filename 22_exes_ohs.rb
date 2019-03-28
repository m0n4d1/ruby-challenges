# Exes and Ohs
# Difficulty: medium/hard

# This is a great question for interview prep, so lets not google it. 
# Instead, try whiteboarding, and thinking of your approach before coding. There are multiple approaches to this question, so try to think of the most efficient one you can!

# Write a method that will take a string as an input. 
# The method will check this string, and count the amount 
# of 'x's and 'o's. It should return true if the amount of 'x's 
# and 'o's are the same, and should return false if they are different. 
# It should also be case insensitive, and work with any set of two 
# characters (for example, the string could contain "oooxxx" or
# "eeefff" - both of these would return true because there are
# two distinct characters and an equal number of each in both
# examples).

# Example input: "ooxx"
# Expected output: true

# Example input: "oOxXxoX"
# Expected output: false

# Example input: "ooXx"
# Expected output: true

# Example input: "rtrt"
# Expected output: true

# Example input: "RtrT"
# Expected output: true

# Example input: "efefy"
# Expected output: false

def comb n
  p n
  if n.length > 1 
    if n[0] > n[1]
      [n[1]] + ( n.length > 2 ? comb([n[0]] + n[2..-1] ) : [n[0]] )
    else
      [n[0]] + comb(n[1..-1]) 
    end
  else
    n
  end
end

def sort n
  comb(n) == n ? n : sort(comb(n))
end

def eval_sym arr
  arr[0..(arr.length/2 - 1)] == arr[0..(arr.length/2 - 1)].reverse && arr[(arr.length/2)..-1] == arr[(arr.length/2)..-1].reverse
end

def exes_and_ohs input
    # Your code goes here
  if input.class == String
    exes_and_ohs input.downcase.chars
  else
    if input.length > 1 && input.length % 2 == 0  
      eval_sym sort input
    else
      false
    end
  end
end
