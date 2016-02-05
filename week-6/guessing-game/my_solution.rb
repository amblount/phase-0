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