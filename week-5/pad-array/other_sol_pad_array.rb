=begin
pseudocode
#create destructive + non-destructive methods
#input for those methods is an array, mn-len, value to pad with
#compare the array length with the min-size to check if we need padding
# if we need padding apply (min-size - array.len ) = number
# value * print it number of times
#return array
#lookup binding.pry

=end





def pad!(array, min_size, value = nil)
  if array.length < min_size
    binding.pry
    array.concat([value]*(min_size - array.length))
  end
  return array
end

def pad(array, min_size, value = nil)
    if array.length < min_size
      diff = (min_size)-(array.length)
      new_arr = array + [value]*diff
    else
      new_arr = Array.new(array)
    end
  return new_arr
end





# def pad!(array, min_size, value = nil) #destructive
#     if min_size <= array.length
#       #checking if input of min_size is less than th length of array
#         return array
#     elsif min_size == 0
#          return array
#      else
#     counter = array.length
#      until counter == min_size
#         array.push(value)
#         counter +=1
#     end
#   end
#     return array
# end

# pad!([1,2,3], 9, "apple")


# def pad(array, min_size, value = nil) #non-destructive
#     new_array = Array.new(array)
#     if min_size <= array.length
#         return array
#     elsif min_size == 0
#          return array
#      else
#     counter = array.length
#      until counter == min_size
#         new_array.push(value)
#         counter +=1
#     end
#   end
#     return new_array
# end

pad([1,2,3,], 9, "apple")
# # Your previous JavaScript content is preserved below:
#
# # This pad is reserved for a member of the Sea Lions 2016
