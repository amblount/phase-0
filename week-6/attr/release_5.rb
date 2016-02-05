#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode

#NameData#name
  # Input: @name = "alivia"
  # Output:
  # Steps:

#Greeting
  # Input: instance NameData
  # Output:
  # Steps:

class NameData

attr_reader :name

  def initialize(name)
    @name = name
  end
end


class Greetings

  def initialize(who_to_greet, time, favorite_food="Pizza")
    @namedata = NameData.new(who_to_greet)
    @time = time
    @favorite_food = favorite_food
  end

  def hello
    puts "Hello #{@namedata.name}! How wonderful to see you today at #{@time}, how was your #{@favorite_food}?"
  end

end

greet = Greetings.new("alivia", Time.now)
greet.hello


