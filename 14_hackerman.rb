# You have to stop the infamous hackerman by writing a basic security program.

# Your task is to write a program which will ask the user for input twice.
# Both times should ask the user to type words and will display the FIRST input.

# However if any of the words in the second input match with a word from the
# first input it should say "HIDDEN" instead of the matched word.

# Example:
# first_input = bob rob dob mob
# second_input = kob fob dob

# output = bob rob HIDDEN mob

# Check your solution by running:
# ruby 14_hackerman.rb

# Your code here

def get_input
  p "Please enter some words."
  gets.strip.chomp.split(" ")
end


def hide_intersection( a = get_input, b = get_input )
  
  #PARAMETERS
  #---------------
  #Gets 2 user input strings a and b splitting each into an array of words (or optionally you may provide 2 arrays of words). 
  
  #BODY (from ltr)
  #---------------
  #Subtract the intersection of sets a and b from the union of sets a and b to get the disjunctive union of sets a and b.
  #NOTE: the disjunctive union of sets a and b will be the set of words persent in either one of the user input strings but not the other.
  #Map over the disjunctive union of sets a and b calling downcase on each element.
  #Take the intersection of sets a and b mapping over each element replacing it with the string "HIDDEN" then add this modified intersection to the modified disjunctive union.
  #NOTE: The modified interesection will be the set of words present in both user input strings replaced with "HIDDEN".
  #Modified union of sets a and b is returned.
  
  return ((a | b) - (a & b)).map { |x| x.downcase } + (a & b).map { "HIDDEN" }

end

p hide_symmetry
# tests
# arr1 = ["one","two", "three"]
# arr2 = ["three", "four", "five"]
# p hide_symmetry(arr1,arr2)


# Beast mode:
# Does your code deal with capital letters? Update your solution so that
# they will be downsized if they are input but HIDDEN remains capitalised.