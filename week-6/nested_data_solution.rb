# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

 p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

 p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
different_array = [1,2,3,4,[1,2,4,53,3],[1],5]


class FunIterationStuff


  def initialize(array)
    @array = array
  end

  def iteration_exercise

    @array.map! do |value|
      if value.is_a? Integer
        add_five(value)
      elsif value.is_a? Array
        value.map! { |nested_number| add_five(nested_number) }
      end
    end
      p @array
  end

  def add_thevalue_five_to_the_end
    @array << 5
    p @array
  end

  private

  def add_five(number)
    number += 5
  end
end

adding_five_fun = FunIterationStuff.new(number_array)
adding_five_fun.iteration_exercise
adding_five_fun.add_thevalue_five_to_the_end
adding_five_fun.iteration_exercise

adding_five_fun = FunIterationStuff.new(different_array)
adding_five_fun.iteration_exercise
adding_five_fun.add_thevalue_five_to_the_end
adding_five_fun.iteration_exercise
# number_array[1].each { |a| a + 5}
# end

number_array.each {|element| puts element}


# a = [ "a", "b", "c", "d" ]
# a.map! {|x| x + "!" }
# a #=>  [ "a!", "b!", "c!", "d!" ]



# number_array = [5, [10, 15], [20,25,30], 35]
# def add_five(array)

#   array.map! do |a|
#     if a.is_a? Integer
#       # What about collect! ?
#       # a.inject {|a| a + 5}
#       # a = a.to_s
#       # a.inject {|a| a + 5}
#       a = a + 5
#       #number_array.insert(0,a + 5)
#       #a.map! {|x| x + 5}
#       #new_number_array.push(a + 5)
#     elsif a.is_a? Array
#       a.map! {|x| x + 5}

#       # array.each_with_index {|value,index| array[index] = value + 5}
#       # #array.map! {number_array[0] + 5 && number_array[1]  + 5}
#       # p number_array
#     end
# #p new_number_array

#  # p new_number_array
#   end
#     p array
# end

# add_five
# # number_array[1].each { |a| a + 5}
# # end

# # a = [ "a", "b", "c", "d" ]
# # a.map! {|x| x + "!" }
# # a #=>  [ "a!", "b!", "c!", "d!" ]




# # Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.each {|a| puts a}

#reflection
=begin

What are some general rules you can apply to nested arrays?
puts will print everything you iterate through even nested items and p will not. I wonder if there is a method you can use to return puts items without printing to the console like saving everything to a variable or pushing it into an array.

What are some ways you can iterate over nested arrays?
array.each {|a| puts a}

Did you find any good new methods to implement or did you re-use one you were already familiar with?
I reused each

What was it and why did you decide that was a good option?
An enumerable, it was a good option becasue it does the job.
=end