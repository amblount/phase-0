#5.3
#Migues
#input array
#convert all inout into string
#iterate through array to find what repeats most often
#return most frequently occurring

def mode(array)
  frequencies = Hash.new(0)
  array.each { |word| frequencies[word] += 1}
  most_freq_word = []
  frequencies.each { |key, value|
    if value == frequencies.values.max
      most_freq_word.push(key)
    end
  }
    #return most_freq_word

end
end

=begin

=end