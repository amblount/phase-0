# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, I am Alivia ].
# I spent [#] hours on this challenge.

# Pseudocode


# Die#Initialize
  # Input: array of strings
  # Output: sample of strings
  # Steps:
    #save the input values in an array = labels
    # @sides = array.size
    # @roll give one of the sides


# Initial Solution

class Die

  attr_reader :labels, :sides, :roll

  def initialize(labels)
    @labels = labels
    unless labels.length > 0
      raise ArgumentError.new("Enter an array of strings, You did not enter anything!")
    end
  end

  def sides
    @sides = @labels.size
  end

  def roll
    @roll = labels.sample
  end
end

new_roll = Die.new(["a","b","c","d","e"])
p new_roll.sides
p new_roll.roll

# Refactored Solution
#used attr_reader so I don't think I need to refactor

# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
No, I was basically working off of what I did last time and added to it.

What does this exercise teach you about making code that is easily changeable or modifiable?
attr makes my code so much more efficient, I guess if I needed to write to something I may have had a different experience.

What new methods did you learn when working on this challenge, if any?
I am new to working with sample, which is like rand for strings.

What concepts about classes were you able to solidify in this challenge?
Using instance variables and calling methods on those variables. I think I am becoming more comfortable with reading errors and with figuring out which input goes where, this was something that I was not every familiar with initially.

=end
