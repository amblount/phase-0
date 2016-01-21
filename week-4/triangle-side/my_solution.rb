# I worked on this challenge [by myself, with: ].
#the sum of the two smallest numbers cannot be smaller than the largest number
# the smallest number can not be smaller than the difference between the two bigger numbers
# if (a == b) && (b == c)
  #   return true
  # elsif (a == 0) || (b == 0) || (c == 0)
  #   return false
  # elsif (a == b) || (b == c) || (a == c)
  #   return true


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!
a+b > c && a+c > b && b+c >a
end