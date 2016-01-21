# Leap Years
  #if year % 4 == 0
  #   if year % 100 != 0
  #     if year % 400 == 0
  #       return true
  #     end
  #   end
  # else
  #   return false
  # end

# I worked on this challenge [by myself, with: ].
#Bethelehem

# Your Solution Below
def leap_year?(year)
(year % 4 == 0 && year % 100 !=0) || year % 400 == 0
end