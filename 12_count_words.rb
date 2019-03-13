# Your challenge is to write a program which will ask the user for input.
# The code should then output the number of times words are used.

# Example:
# If the words 'hi hi Hi hello 1 1' are input, the result should be:
# hi 2
# Hi 1
# hello 1
# 1 2

# Test your solution by running 12_count_words


# Your code here

def count_words(words = gets.chomp.split(" ").sort,acc={})
  if words.length > 0
    if acc[words[0]]
      acc[words[0]] += 1
    else
      acc[words[0]] = 1
    end
    count_words(words.drop(1),acc)
  else
    return acc
  end
end

# Beast Mode:
# Change your code so that it doesn't matter if capital letters are used,
# In the above example the result should be:
# hi 3
# hello 1
# 1 2

count_words()