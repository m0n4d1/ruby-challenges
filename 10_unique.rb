# Unique

# Ruby has a handy array.unique helper which removes
# duplicates. Imlpement your own version of the helper,
# without using .unique.

# Difficulty:
# 5/10

# Example:
# unique([1,2,3,3]) should return [1,2,3]
# unique(["tom", "tom", "tom"]) should return ["tom"]

# Hints:
# A hash could be helpful in your solution.

# Check your solution by running the tests:
# ruby tests/10_unique_test.rb

def unique(arr,i=0,j=1)

  unless i + 1 === arr.length #index i has not reached the end of array and has more elements left to check for duplicates
    
    if i  < arr.length - j #there are items in array past index i that could be a duplicate of item at index i

      if arr[i] === arr[-j] #item at index i has a duplicate at index -j
        
        arr.delete_at(-j) #destroy duplicate of index i at index -j
        unique(arr,i,j) #call again with duplicate removed
      
      else #item at index i does not have a duplicate item at index -j
        unique(arr,i,j + 1) # call again incrementing index j by 1 so next item can be check for duplicity
      end

    else #there are no more items past i to check
      unique(arr,i + 1, 1)  # increment index i by 1, reset index j for next round of item at index i for duplicates
    end

  else #index i has reached end of array, or array length is 1 or 0
    return arr #duplicate checking complete, return filtered array.
  end

end
