# FizzBuzz

# Don't look this one up until you complete it yourself!
# It's a common interview question and there will be plenty
# of spoilers on the interwebs.

# Difficulty:
# 4/10

# This is a trivial question with many simple solutions.
# Try to write the least amount of code as possible.

# Write a program that prints the numbers from 1 to 100.
# But for multiples of three print “Fizz” instead of the
# number and for the multiples of five print “Buzz”. For
# numbers which are multiples of both three and five
# print “FizzBuzz”.

# Check your solution by running: ruby 11_fizzbuzz.rb

# Example:
# 1
# 2
# Fizz
# 4
# Buzz
# ...etc

# Your code here

def fizzbuzz(num)
  if num <= 1
    p num
  else
    if num % 5 == 0 && num % 3 == 0
      print "FizzBuzz\n"
    elsif num % 5 == 0
      print "Buzz\n"
    elsif num % 3 == 0
      print "Fizz\n"
    else
      p num
    end
    fizzbuzz(num - 1)
  end
end

fizzbuzz(100)