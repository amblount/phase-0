# Calculate a Grade


# I worked on this challenge [by myself, with: ].
#Bethelhem

# Your Solution Below
def get_grade(number)
  if(number >= 90)
    return 'A'
  elsif(number >= 80)
    return 'B'
  elsif(number >= 70)
    return 'C'
  elsif(number >= 60)
    return 'D'
  else
    return 'F'
  end
end