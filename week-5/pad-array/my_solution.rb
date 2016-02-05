# Pad an Array

# I worked on this challenge [by myself, with: ]
#andrea
# I spent [] hours on this challenge.
#1 hour

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#array, minimum size, padding
# What is the output? (i.e. What should the code return?)
#array of minimum size with additional padding if required
# What are the steps needed to solve the problem?
#take in array and
=begin
pseudocode
#create destructive + non-destructive methods
#input for those methods is an array, mn-len, value to pad with
#compare the array length with the min-size to check if we need padding
# if we need padding apply (min-size - array.len ) = number
# value * print it number of times
#return array
#lookup binding.pry

=end



# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  size = array.length
  if min_size > size
      additions = min_size - size
      additions.times do
        array.push(value)
      end
  end
  # Your code here
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new(array)
  size = new_array.length
  if min_size > size
      additions = min_size - size
      additions.times do
        new_array.push(value)
      end
  end
  # Your code here
  return new_array
end


# 3. Refactored Solution



# 4. Reflection