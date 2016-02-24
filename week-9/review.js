/*begin
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
*/

/*
Ruby Code
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
*/

var GuessingGame = Class {
  constructor(answer, solved) {
  this.answer = answer;
  this.solved = solved;
  }

  function guess(attempt) {
    var high = Symbol("high");
    var low = Symbol("low");
    var correct = Symbol("correct");
    if (attempt > answer) {
      solved = false
      return Symbol("high")
    } else if (attempt < @answer) {
        solved = false;
        return Symbol("low");
    } else {
        solved = true;
        return Symbol("correct");
    }
  };

  function solved?() {
    return solved = true;
  };

};

