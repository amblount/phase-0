# Build a simple guessing game


# I worked on this challenge [by myself: I am alivia ].
# I spent [#] hours on this challenge.

=begin
# Pseudocode

GuessingGame#Initialize
# Input: create answer instance variable
# Output::high, :low, :correct
# Steps: set solved to false

GuessingGame#Guess
# Input: @guess
# Output: :high, :low, :solved
# Steps: compare @answer to @guess

GuessingGame#solved?
# Input: @guess
# Output: :correct
# Steps: is @answer == @guess print :correct solved evaluates true

=end

# Initial Solution

# class GuessingGame

#   #game = GuessingGame.new(rand(1..100))

#   def initialize(answer)
#     # Your initialization code goes here
#     @answer = answer
#     @solved? = false

#   def solved
#     if @answer == rand(100)
#       return game.solved
#   end

#   def guess
#     @guess = guess
#   end

# puts "#{last_guess} was correct!"

#   # Make sure you define the other required methods, too
# end

def the_game_loop(game)
  last_guess  = nil
  last_result = nil

  until game.solved?
      unless last_guess.nil?
        puts "Oops!  Your last guess (#{last_guess}) was #{last_result}."
        puts ""
      end
    end

  print "Enter your guess: "
  last_guess  = gets.chomp.to_i
  last_result = game.guess(last_guess)

end

# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(attempt)
    if attempt > @answer
      @solved = false
      :high
    elsif attempt < @answer
      @solved = false
      :low
    else
      @solved = true
      :correct
    end
  end

  def solved?
    @solved
  end
end

game = GuessingGame.new(rand(1.100))

the_game_loop(game)

# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
Instance variables are able to be modified and then they are changed until they are altered again.

When should you use instance variables? What do they do for you?
You should use instance variables when you need to access a value in different methods within the same class. They allow you to keep track of the chanes you made to an instance through the call.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Control flow is used to map the program and what information you need to collect and manipulate before you cna move on to get new information and manipulate that.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
 Symbols are imutable and so they do not change. The point of usinf symbols is to compare the output value to the immutable to see where tha value stands in this case is it high low or correct.


=end