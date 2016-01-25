# Analyze the Errors

# I worked on this challenge [by myself, with: ].
#alone
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------
#Answer: The error is occurring in the errors.rb file

#Answer: The error occurs on line 19.

#Answer: This is a syntax error

#Answer: The interpreter says it did not expect an "=" sign, rather it expected an $end.

#variabled defined on the left first


cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 181
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# expect end
# 5. Where is the error in the code?
# infinite while loop, no end
# 6. Why did the interpreter give you this error?
# the end of file line 181 does not contain the end

# --- error -------------------------------------------------------

south_park = nil

# 1. What is the line number where the error occurs?
# line 47
# 2. What is the type of error message?
# <'main'>
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method 'south_park' for main object (NameError)
# 4. Where is the error in the code?
# south park is undefinied
# 5. Why did the interpreter give you this error?
# because it is not used anywhere or defined or commented out

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
# ln 62
# 2. What is the type of error message?
# '<main>'
# 3. What additional information does the interpreter provide about this type of error?
# undefined method 'cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
# no def or end
# 5. Why did the interpreter give you this error?
# formatting was incorrect

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
# ln 78 + 82
# 2. What is the type of error message?
# wrong number of arguments 1 for 0, argument error
# 3. What additional information does the interpreter provide about this type of error?
# from error.rb ln 82 in '<main>'
# 4. Where is the error in the code?
# there are no parameters in that code so you can't call the method with a parameter
# 5. Why did the interpreter give you this error?
# wrong number of arguments 1 for 0, argument error

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("a")

# 1. What is the line number where the error occurs?
# ln 97
# 2. What is the type of error message?
# wrong number of arguments 0 for 1
# 3. What additional information does the interpreter provide about this type of error?
# argument error
# 4. Where is the error in the code?
# called cartment_says without an offensive message
# 5. Why did the interpreter give you this error?
# you need an argument



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!','john')

# 1. What is the line number where the error occurs?
# ln 118
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# 1 for 2
# 4. Where is the error in the code?
# only one argument input when 2 are needed
# 5. Why did the interpreter give you this error?
# waiting for another argument

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# ln 137
# 2. What is the type of error message?
# *: string can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# (TypeError)
# 4. Where is the error in the code?
# When you have a string that you want to repeat you must call the string first its the object
# 5. Why did the interpreter give you this error?
# the number 5 was caled first which doesn't make sense

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/2


# 1. What is the line number where the error occurs?
# 152
# 2. What is the type of error message?
# divided by zero
# 3. What additional information does the interpreter provide about this type of error?
# ZeroDivisionError
# 4. Where is the error in the code?
# 0 as a demoniator can be confusing becasue the interpreter views zero as either false or nothing and division by nothing doesn't make sense
# 5. Why did the interpreter give you this error?
# division by nothing undefined

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# ln 168
# 2. What is the type of error message?
# cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
# path (LoadError)
# 4. Where is the error in the code?
# there is no file in the same level of the directory as the errors feil so the relative path is wrong and there is no such file
# 5. Why did the interpreter give you this error?
# no such file there


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#Difficult to read: I felt that all the errors were pretty straight to the point
#reading the error message was pretty clear, I think that knowing which part of the code the compiler is talking about makes it a lot easier.
#I was able to figure it out.
#I will look at the line number and what type of error and then read the additional information