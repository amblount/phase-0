# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]
#alone

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: # of sides
# Output: random number which is an integer less than the number of sides
# Steps: input #, roll, return random


# 1. Initial Solution

class Die
  def initialize(sides)
    # code goes here
    @sides = sides
    unless sides > 1
      raise ArgumentError.new("Must enter more than 1 side")
    end
  end

  def sides
    # code goes here
    @sides
  end

  def roll
    # code goes here
    rand(1..sides)
  end
end



# 3. Refactored Solution
# class Die
#   def initialize(sides)
#     # code goes here
#     @sides = sides
#     unless sides > 1
#       raise ArgumentError.new("Must enter more than 1 side")
#     end
#   end

#   def sides
#     # code goes here
#     @sides
#   end

#   def roll
#     # code goes here
#     rand(1..sides)
#   end
# end







# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
An argument error occurs when you do not have the proper amount of arguments for the assigned method.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I used instance variables and classes ArgumentError was also new for me

What is a Ruby class?
A class is the highest ranking object in Ruby. It encapsulates other ruby objects

Why would you use a Ruby class?
To help with inheritance so that lower ranking objects could use the features of the class

What is the difference between a local variable and an instance variable?
local variables are defined inside the method while instance methods are defined inside a class

Where can an instance variable be used?
Inside the class where it was created and through inheritance.

=end