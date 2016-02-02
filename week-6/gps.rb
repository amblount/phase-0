# Your Names
# 1) Neil
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # error_counter = 3
#named the method, assigned number of arguments
#created a library hash with items and numbers of ingredients required to make the item
#make error counter variable and set it to three


  if library.has_key?(item_to_make) == false
   raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # library.each do |food|
  #   if library[food] != library[item_to_make]
  #     error_counter += -1
  #   end
  # end
#loop through hash by each item or food
#checking if the value of each food in the iteration is not equal to the value of the item that we want to make
#decrementing error counter by -1 if they are not equal ^

  # if error_counter > 0

#completed the loop and check the new value of error counter
#if error counter is greater then zero, we raise argument error that the input number of ingredients is invalid


  # serving_size = library.values_at(item_to_make)[0]
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
#new method values_at returns an array with the values of the given keys called from the hash. The index [0] is used to grab the first element of the array althought the array in this case is only one item long- serving_size
#remaining_ingredients takes the remainder of the number of indegrients divided by the serving size to suggest what item to make with the leftovers, we need to create this method

  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

#case statement to sumarize the results of prior calculations
#print calculations complete with the number of ingredients and the item to make when there is no remainder, when there is a remainder we return the same thing in addition to suggested baking items.

#change machine, quarters, dimes, nickels, pennies
#iterating over library


p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
#p serving_size_calc("THIS IS AN ERROR", 5)
