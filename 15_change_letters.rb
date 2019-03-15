# Write a program which will ask users for a string input.
# The program should display the input unless, it contains the letter 's'.

# If 's' is included change the output so that it will be 'th' instead.

# Examples:
# input = say hi
# output = thay hi

# input = mississippi
# output = miththiththippi

# Hint:
# Look up String on Ruby docs to help.

# Check your solution by running:
# ruby 15_change_letters.rb



# Your code here

#map
def change_letters input = gets.strip.chomp 
  input.chars.map { |x| x == "s" ? "th" : x }.join 
end

#regex
def change_letters input = gets.strip.chomp 
  input.gsub(/[s]/, 'th')
end

p change_letters