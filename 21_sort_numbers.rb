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
def bubble n
  if n.length > 1 
    if n[0] > n[1]
      [n[1]] + ( n.length > 2 ? bubble([n[0]] + n[2..-1] ) : [n[0]] )
    else
      [n[0]] + bubble(n[1..-1]) 
    end
  else
    n
  end
end

def bubble_sort n
  bubble(n) == n ? n : bubble_sort(bubble(n))
end

#recursive merge sort
def merge (a,b,arr=[])
  if a[0] && b[0] 
    a[0] < b[0] ? merge(a.drop(1),b, arr.concat([a[0]])) : merge(a,b.drop(1),arr.concat([b[0]]))
  else
    a.any? ? arr.concat(a) : arr.concat(b)
  end
end

def merge_sort arr
  if arr.length > 1
    merge(merge_sort(arr[0..(arr.length / 2 - 1)]), merge_sort(arr[(arr.length / 2)..-1]))
  else
    arr
  end
end

arr = [2,5,4,8,2,4,5,1,2,3,4,3,1,6,4,3,4,56,6,12,34,15,6,42,4,2,3,4,234,5,2,3,4,5,65,2,3,4,5,3,2,5,6,6435,634,343,23,43,2]

p (bubble_sort arr).join
p (merge_sort arr).join


