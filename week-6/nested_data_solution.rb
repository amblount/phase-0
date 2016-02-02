# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================



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