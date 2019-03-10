# Vowels

# Write a method that will take a string and
# return an array of vowels used in that string.

# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]

# Check your solution by running the tests:
# ruby tests/09_vowels_test.rb

def vowels (string)
  if string.class == String
    vowels(string.split("").concat([ [] ]))
  else   
    if string[0].class == String 
      case string[0]
      when "A","a","E","e","I","i","O","o","U","u"
        vowels(string.slice(1..-2).concat( [string[-1].concat([string[0]])] ))
      else
        vowels(string.drop(1)) 
      end  
    else
      return string[0]
    end
  end
end
