# Sorting algorithms are a key tool in programming.
#
# Write an algorithm that will sort an array of numbers 
# in ascending order. 
# Do not use the .sort method - the idea is that you write
# your own sort method.
# 
# Use hand simulation or pythontutor.com to determine how
# many times your solution visits each element of the array
# in a worse case scenario. If your array has 10 elements for example,
# in a worse case situation does your algorithm examine each element
# once? Twice? More? Less?
# 
# This will help you begin to understand order of complexity
# of algorithms.
#
# Optional:
# Look up explanations of common sorting algoithms
# like bubble sort and quick sort. Don't look up code, just look up the 
# explanations and see if you can implement one of those. 
# Which one is your favourite and why?
#
# Example input: [2,5,4,8,2]
# Expected output: [2,2,4,5,8]


#recursive bubble sort
def comb n
  # p n
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
  # Your code goes here
  comb(n) == n ? n : sort(comb(n))
end


puts sort([2,5,4,8,2,4,5,1,2,3,4,3,1,6,4,3,4,56,6,12,34,15,6,42,4,2,3,4,234,5,2,3,4,5,65,2,3,4,5,3,2,5,6,6435,634,343,23,43,2]).join(" ")
