# Background
# Using array and string methods
# Passing in one argument

## Specs

#Your task is to make a function that can take any 
#non-negative integer as a argument and return it 
#with its digits in descending order. 
#Essentially, rearrange the digits to create 
#the highest possible number.

#Examples:
#Input: 21445 Output: 54421
#Input: 145263 Output: 654321
#Input: 1254859723 Output: 9875543221


#____________
#recursive pure arithmatic
#____________
#length of a base10 number counting from 0
def length n
  Math.log10(n).floor 
end

# Reduces an integer to its first digit eg. 321 #=> 3
def get_first_digit n 
  n / 10**length(n) 
end

# Round integer to 1 significant figure  eg. 321 #=> 300
def round_1_sig_fig n 
  get_first_digit(n) * 10**length(n)
end

# Drops fist digit off an integer eg. 321 #=> 21
def drop1 n 
  n - round_1_sig_fig(n)
end

# single pass of a bubble sort (comb through once)
def comb n
  #if integer has more than 1 digit 
  if n >= 10
    #if the  first digit is less than the second digit of the integer
    if get_first_digit(n) < get_first_digit(drop1(n))
      #switch first and second digits, continue combing
      (round_1_sig_fig(drop1(n)) * 10) + comb( (round_1_sig_fig(n) / 10) + drop1(drop1(n)) )
    else
      #digits are in correct positions, contiune combing
      round_1_sig_fig(n) + comb(drop1(n))
    end
  else
    #last digit reached, comb finshed.
    n
  end

end

def sort n
  # if a combing over n equals n then the sorting is complete, else continue sorting (combing through)
  comb(n) == n ? n : sort(comb(n))
end

def remove_zeros n
  unless n == 0 || n < 10
    remove_zeros(drop1(n)) * 10 + get_first_digit(n) 
  else
    n 
  end
end

# alias 
def descending_numbers n 
  raise ArgumentError, "Argument: (#{n}) is not a positive interger" unless n.is_a? Integer and n > 0
  n > 1 ? sort(remove_zeros(n)) * 10**(length(n) - length(remove_zeros(n))) : n
end

huge_int = 10235345032502435023450250432603602340603450043205063502607045602357623340603450043205063502607045602357623223450250432603602340603450043205063502607043260360234060345004320506350260704560235762334060345004320506350260704560235762322345025043260360234060345004320506350260704326036023406034500432050635026070456023576233406034500432050635026070456023576232234502504326036023406034500432050635026070


p descending_numbers huge_int