#week 5
#accountability group
#pseudocode

#goal: make groups from a list of 4-5 students
#input: list of names
#list of groups
#assign each student to a group
#puts groups with members like a roster

#update
#create array
#split array using range
#create hash
#push each array into a new hash with a given value representing accountability group
#print accountability group

students = ["Alivia Blount","Alyssa Page","Alyssa Ransbury", "Andria Reta",
"Austin Dorff", "Autumn McFeeley", "Ayaz Uddin", "Ben Giamarino", "Benjamin Heidebrink", "Bethelhem Assefa", "Bobby Reith", "Robert Reith", "Dana Breen",
"Brett Ripley", "Rene Castillo", "Justin J Chang", "Ché Sanders","Chris Henderson","Colette Pitamba", "Connor Reaumond", "Cyrus Vattes", "Dan Heintzelman","David Lange", "Eduardo Bueno", "Liz Roche", "Elizabeth Roche", "Emmanuel Kaunitz", "FJ Collins Jr.", "Frances Pangilinan", "Ian Fricker", "Ian Thorp", "Ivy Vetor", "Jack Baginskin","Jack Hamilton", "Jillian Campbell", "John Craigie", "John Holman", "John Maguire",
"John Pults", "Jones Melton", "Tyler Keating", "Kenton Lin","Kevin Serrano", "Kevin Sullivan", "Kyle Rombach", "Laura Montoya", "Luis Ybarra", "Charlotte Manetta","Martina Osteyee-Hoffman", "Megan Swanby", "Michael London", "Michael Wang",
"Michael Yao", "Mike Gwozdek", "Miqueas Hernandez", "Mitchell Kroska", "Norberto Caceres", "Patrick Skelley", "Peter Kang", "Philip Chung", "Phillip Barnett", "Pietro Martini", "Robbie Santos", "Rokas Simkonis", "Ronesh Ghoshal", "Ryan Nebuda", "Ryan Smith", "Saralis Rivera", "Sepand Assadi", "Spencer Alexander", "Stephanie Major",
"Taylor Daugherty", "Thomas Farr", "Maeve Tierney", "Tori Huang", "Alexander Williams","Victor Wong", "Xin Zhang", "Zach Barton"]


def acct_group(array)
  group_one = Hash.new
  group_two = Hash.new
  group_three = Hash.new
  group_four = Hash.new
  group_five = Hash.new
  group_six = Hash.new
  group_seven = Hash.new
  group_eight = Hash.new
  group_nine = Hash.new
  group_ten = Hash.new
  group_eleven = Hash.new
  group_twelve = Hash.new
  group_thirteen = Hash.new
  group_fourteen = Hash.new
  group_fifteen = Hash.new
  group_sixteen = Hash.new

  one = array[0..4]
  two = array[5..9]
  three = array[10..14]
  four = array[15..19]
  five = array[20..24]
  six = array[25..29]
  seven = array[30..34]
  eight = array[35..39]
  nine = array[40..44]
  ten = array[45..49]
  eleven = array[50..54]
  twelve = array[55..59]
  thirteen = array[60..64]
  fourteen = array[65..69]
  fifteen = array[70..74]
  sixteen = array[75..79]

  one.each do |d| group_one[d] = 1
end

  two.each do |d| group_two[d] = 2
end

  three.each do |d| group_three[d] = 3
end

  four.each do |d| group_four[d] = 4
end

  five.each do |d| group_five[d] = 5
end

  six.each do |d| group_six[d] = 6
end

  seven.each do |d| group_seven[d] = 7
end

  eight.each do |d| group_eight[d] = 8
end

  nine.each do |d| group_nine[d] = 9
end

  ten.each do |d| group_ten[d] = 10
end

  eleven.each do |d| group_eleven[d] = 11
end

  twelve.each do |d| group_twelve[d] = 12
end

  thirteen.each do |d| group_thirteen[d] = 13
end

  fourteen.each do |d| group_fourteen[d] = 14
end

  fifteen.each do |d| group_fifteen[d] = 15
end

  sixteen.each do |d| group_sixteen[d] = 16
end

  p group_one
  p group_two
  p group_three
  p group_four
  p group_five
  p group_six
  p group_seven
  p group_eight
  p group_nine
  p group_ten
  p group_eleven
  p group_twelve
  p group_thirteen
  p group_fourteen
  p group_fifteen
  p group_sixteen

end

acct_group(students)



=begin
I am new to hashes so there are things I don't understand
I do realize now that a big problem I was having was assigning a set value to a hash, I thought I was initializing the hash the proper way but I was wrong.

There must be a better way to loop through these steps to create a new hash named something different each time.

=end