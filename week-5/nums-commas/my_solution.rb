# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
#positive integer
# What is the output? (i.e. What should the code return?)
#positive integer with commas in the correct place
# What are the steps needed to solve the problem?
#1. create a new array
#2. push input into array
#3. chec if the first digit is 0
#4. count the number of items in array
#5. insert 1 comma after every 3 numbers starting from the right
#5. input commas
#6. return new value with commas
#note size % 3 returns 2
# want to insert comma @ array[2]


# 1. Initial Solution
# def separate_comma(number)
#   array = number.to_s.split('')
#   size = array.length
#   if size <= 3
#     return number
#   else

# end



# 2. Refactored Solution

def separate_comma(number)
  array = number.to_s.split('') #creates an array from number w/ digits
  number_commas = array.size/3.0 #how many commas
  if array.size < 4 #this is a 3 digit number
    return number.to_s #return number no comma needed
  elsif array.size%3 == 0
    n = -4
    (number_commas.to_i-1).times do |i|
      array.insert(n, ',')
      n -= 4
    end
    return array.join("")
  else
      n = -4
    number_commas.to_i.times do |i|
      array.insert(n, ',')
      n -= 4
    end
  return array.join("")
  end
end

# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
I thought about input, output and methods I could use to sole the problem.

Was your pseudocode effective in helping you build a successful initial solution?
Yes, I used it to write the code and think through the steps.

What new Ruby method(s) did you use when refactoring your solution?
insert
join

Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
I scanned through the docs to figure out which methods I could use that may work.

How did you initially iterate through the data structure?
I started with creating an array but that didn't work with the split method which makes an array of it's own.

Do you feel your refactored solution is more readable than your initial solution? Why?
yes, I had to fix the code to make sure that it would run.
=end