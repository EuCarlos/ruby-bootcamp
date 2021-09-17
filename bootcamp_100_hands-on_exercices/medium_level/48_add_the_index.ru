=begin
    Given an array of numbers, create a function which returns the array but with each elements's 
    index in the array added to itself. This means you add 0 to the number at index 0, add 1 to the 
    number at index 1, etc...
=end

def add_indexes(arr)
	print arr.map.with_index { |x, i| x + i }
end

add_indexes([0, 0, 0, 0, 0]) # [1, 2, 3, 4, 5]
add_indexes([1, 2, 3, 4, 5]) # [1, 3, 5, 7, 9]
add_indexes([5, 4, 3, 2, 1]) # [5, 5, 5, 5, 5]