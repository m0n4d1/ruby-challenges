# Remove adjacent duplicates

# Sometimes we have input with adjacent duplicates, and we want to remove
# those adjacent duplicates, keeping the original input in order.

# Create a method, which takes a string argument and returns a string
# with duplicate adjacent elements removed, preserving the original
# order of characters and preserving original case. Your algorithm
# should be case sensitive, meaning that "Aa" should not be considered
# duplicate adjacent characters, like "aa" or "AA".  

# *E.g.* remove_adjacent_duplicates("AAaAbbCCCcDDcDA") should return "AaAbCcDcDA"

# *E.g.* remove_adjacent_duplicates("abcABCabcABC") should return exactly the same string: "abcABCabcABC"

def drop_adjacent_duplicates(arr,x=2)
 arr[0] == arr[x] ? drop_adjacent_duplicates(arr,x+1) : arr.drop(x) 
end


def test input
    # Your code goes here
    if input.class == String
      test input.chars
    else

      if input.length > 1
        [input[0]].concat( test( input[0] == input[1] ? drop_adjacent_duplicates(input) : input.drop(1)))
      else
        [input[0]]
      end 
    end 
end
def remove_adjacent_duplicates input
  (test(input)).join
end
p remove_adjacent_duplicates "ttessst"
