# Count Letters

# Write a method that will take a string, keep count
# of each letter and return the totals as a hash.

# Example:
# count_letters("hello") should return {"h"=>1, "e"=>1, "l"=>2, "o"=>1}
# count_letters("mississippi") should return {"m"=>1, "i"=>4, "s"=>4, "p"=>2}

# Check your solution by running the tests:
# ruby tests/08_count_letters_test.rb

def count_letters (string)

  if string.class == String
    string = string.split("").sort << {}
    count_letters(string)
  elsif string.class == Array && string[0].class == String
    
    if string[-1][string[0]]
      string[-1][string[0]] += 1
      count_letters(string.drop(1))
    else
      string[-1][string[0]] = 1
      count_letters(string.drop(1))
    end

  else 
    return string[0]
  end

end
