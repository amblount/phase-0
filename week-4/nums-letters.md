#4.2 Numbers, Letters, and Variable Assignent

What does puts do?
puts simply writes onto the screen whatever comes after it

What is an integer? What is a float?
In most programming languages (and Ruby is no exception) numbers without decimal points are called integers, and numbers with decimal points are usually called floating-point numbers, or more simply, floats.

What is the difference between float and integer division?
Integer division produces an integer while float and integer division produce a float.

How would you explain the difference to someone who doesn't know anything about programming?
If you have a decimal in your digit you are using float and your product of any arithmatic will be a float. If you do not have a decimal in any portion of your math then your integer arithmatic will be an integer.

#Hours in a year

This is a program

def calculate
hours = 24
days = 365
hours_per_year = hours * days
puts("#{hours_per_year} hours per year")
end

calculate

#Minutes in a decade

This is a program
def ten_years
minutes_per_hour = 60
minutes_per_day = minutes_per_hour * 24
minutes_per_year = minutes_per_day * 365
minutes_per_ten_years = minutes_per_year * 10
puts("#{minutes_per_ten_years} minutes per ten years")
end

ten_years


#Reflection

How does Ruby handle addition, subtraction, multiplication, and division of numbers?
The same way that a calculator would, you can just use the proper syntax to get it to run properly.

What is the difference between integers and floats?
Integers are numbers without decimals and then there are floats with decimal places.

What is the difference between integer and float division?
integer division is division between two integer numbers and produces an integer as a result, while float division has one or more float numer and produces a float as a result.

What are strings? Why and when would you use them?
Strings are sequences of code with letters and numbers they are like code blocks.

What are local variables? Why and when would you use them?
local variables are variables that are defined inside a method and are called inside that method.

How was this challenge? Did you get a good review of some of the basics?
Yeah, I thought it helped me remember the basics of ruby code like methods and strings, and calling variables.