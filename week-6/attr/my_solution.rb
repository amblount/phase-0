#MY SOLUTION
# Reflection
=begin
# release 1
What are these methods doing?
These methods are keeping track of the instance variables, by printing the info stored in them on the class.

How are they modifying or returning the value of instance variables?
They are returning the value of the instance variables. By definition the blah_blah=(new) will modify the instance variable.

# release 2
What changed between the last release and this release?
attr_reader :age replaced the need for an entire method for age

What was replaced?
#this code is no longer needed.
  # def what_is_age
  #   @age
  # end

Is this code simpler than the last?
It's easier to read.


# release 3
What changed between the last release and this release?
attr_writer was added allowing us to write to the instance variable without the need for a new method

What was replaced?
# This code is no longer needed
  # def change_my_age=(new_age)
  #   @age = new_age
  # end


Is this code simpler than the last?
a lot simpler

# release 4
# N/A


# release 5
# 2 classes Name + Greeting

What is a reader method?
Creates an instance of the attribute and allows you to read it.

What is a writer method?
Creates an instance of the attribute and allows you to write to it.

What do the attr methods do for you?
Compress the code and allow you to read and or write to methods.

Should you always use an accessor to cover your bases? Why or why not?
No, you should think about why you need an attr and if the instance variable should change or not.

What is confusing to you about these methods?
Those are straight forward. I am having trouble with understanding how to call a class with an argument inside another class. For me that is very confusing. When do you input the required input when you are calling?


=end