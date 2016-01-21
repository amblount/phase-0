# Factorial

# I worked on this challenge [by myself, with: ].
#john

# Your Solution Below
def factorial(number)
  # Your code goes here
  if(number > 1)
    number * factorial(number-1)
  else
    1
  end
end

factorial(5)

