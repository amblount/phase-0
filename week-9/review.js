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


/*
What concepts did you solidify in working on this challenge?
  I had more practice with javascript classes and symols< I guess these are just technically just objects.

What was the most difficult part of this challenge?
  Thinking about what the names of the ruby objects were and how I culd swap the way that I used a method and convert it into a js function.

Did you solve the problem in a new way this time?
  No I just used the same method I used before it was more like a code conversion.

Was your pseudocode different from the Ruby version?
  No I used the same pseduocode.

What was the same and what was different?
  The idea of a class was the same but the way that you implement symbols in js is a lot more complicated from the way that you use symbols in ruby, ruby is a lot easier.
*/
