# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Kevin Serrano].
# I spent [1] hours on this challenge.

# Pseudocode

# Initialize Method (class)
# Input: 16 digit number (no spaces) integer type no float
# Output: return object
# Steps: check if input is 16 digits long
  #if valid then initialize
  #store that number in a variable
  #if not valid then ask for a valid input

# check_card method
# Input: nil
# Output: boolean true of false if valid card #
# Steps: convert from integer to string
  #string.split('') returns an array of string values
  #map! block to iterate through array for s -> i
  #convert string to_i as needed
  #iterate through array from second to last digit double every other      digit until you reach the first digit.
    #[1,2,6] -> [1,2,12] -> is a number greater then 9? use mod %
    # split_for_double_digit = double digit number % 10 + 1
    #iter -= -2 (counter)
    #editing array in place
    #use sum method to add all parts of array
    #check if the sum is a multiple of ten
    # return true or false

# 12345 (integer)

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits



class CreditCard
  def initialize(number)
    unless number.to_s.length == 16
      raise ArgumentError.new("The input has to be 16 digits long!")
    end
    @number = number
  end

  def check_card
    ccnumber = @number.to_s.split('')
    ccnumber.map! do |num|
      num.to_i
    end
    ccnumber = doubling(ccnumber)
    final = ccnumber.reduce(:+)
    if final % 10 == 0
      return true
    else
      return false
    end

  end

  def doubling(array)
    iter = -2 # 0
    while iter >= -16 # 14
      double = array[iter] * 2
      if double > 9
        double = (double % 10) + 1
      end
      array[iter] = double
      iter -= 2 # +=
    end
    return array
  end

end


# Refactored Solution

# class CreditCard
#   def initialize(number)
#     unless number.to_s.length == 16
#       raise ArgumentError.new("The input has to be 16 digits long!")
#     end
#     @number = number
#   end

#   def check_card
#     ccnumber = @number.to_s.split('')
#     ccnumber.map! do |num|
#       num.to_i
#     end
#     ccnumber = doubling(ccnumber)
#     final = ccnumber.reduce(:+)
#     final % 10 == 0 ? true : false

#   end

#   def doubling(array)
#     iter = 0
#     while iter <= 14
#       double = array[iter] * 2
#       if double > 9
#         double = (double % 10) + 1
#       end
#       array[iter] = double
#       iter += 2 #
#     end
#     return array
#   end

# end

x = CreditCard.new(4563960122001999)
# puts x.check_card

=begin
Reflection
What was the most difficult part of this challenge for you and your pair?
We spent a lot of time on the pseudocode and playing around in coder pad. We also used binding pry to test out solutions and we consistently check our code to make sure that we were creating methods that made sense. I think that planning out what information we needed to gather and then trying the code works very well when trying to solve problems.

What new methods did you find to help you when you refactored?
This is the first time that I used reduce, so that was cool for me. I also was unfammiliar with the shortcut for writing if statements with one line.

What concepts or learnings were you able to solidify in this challenge?
I understoof how to more clearly write methods to break down the problem and how to use irb and binding pry to test the solutions.

=end