# I worked on this challenge [by myself,].
# This challenge took me [#] hours.

# Pseudocode
# Fibonacci numbers: start with 0 & 1, you add the two prior numbers together to get the next number.
# input: need a counter for the integer, which number are we looking at?
# number_a & number_b which are the two prior numbers
# number_a = 0
# number_b = 1
# next_number = x
# function will check if (num) is part of the array of nums that are the fib nums


# Initial Solution

def is_fibonacci?(num)
  if num == 0
    return true
  elsif num == 1
    return true
  elsif num < 0
    return false
  else
    return (is_fibonacci?(num - 1) + is_fibonacci?(num - 2))
  end

  for (i=0; i < num; i++)
    first_number = 0
    second_number = 1
    next_number = first_number + second_number
    first_number = second_number
    second_number = next_number
  end





end



# Refactored Solution







# Reflection