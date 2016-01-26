#GPS2_2
#dev sealions
#alivia
#eddie
#driver
#navigator

# Method to create a list
# input: none
# output: [what data type goes here, array or hash?]#empty hash
def create_list
   {}
end

# Method to add an item to a list
# input: item name and optional quantity  list
# steps:
# output: value
def add_to_list(list, item, quantity)
  update(list, item, quantity)
end


# Method to remove an item from the list
# input:
# steps:
# output:
def remove_item(list, item)
   list.delete(item)
   return "You deleted #{item}."
end

# Method to update the quantity of an item
# input: list item new value
# steps: update method on hash
# output: new value name and quantity
def update(list, item, quantity)
  list[item] = quantity
end

# Method to print a list and make it look pretty
# input: list
# steps: print
# output: item quantity
def display(list)
  puts list
end

the_list = create_list

list = create_list
add_to_list(list, 'Lemonade',2)
add_to_list(list,'Tomatoes',3)
add_to_list(list,'Onions', 1)
add_to_list(list,'Ice Cream',4)
remove_item(list,'Ice Cream')
update(list,'Ice Cream',1)
display(list)

=begin
What did you learn about pseudocode from working on this challenge?
It's a way to think through the problems by understanding what information is needed

What are the tradeoffs of using Arrays and Hashes for this challenge?
We didn't try an array it seemes like a has was the best solution

What does a method return?
the value (number)

What kind of things can you pass into methods as arguments?
arrays, variables, strings

How can you pass information between methods?
yes, you can call one method from another method

What concepts were solidified in this challenge, and what concepts are still confusing?
I think I understand thinking about what information you need as a parameter but I don't think that I have a solid understanding of calling parameters in methods but I need work on understanding why we defined a list the_list but never used it.

=end
