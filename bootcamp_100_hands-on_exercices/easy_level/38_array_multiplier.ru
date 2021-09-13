=begin 
    Create a function that takes an array as an argument and returns a new nested array for each 
    element in the original array. The nested array must be filled with the corresponding 
    element (string or number) in the original array and each nested array has the same amount 
    of elements as the original array.
=end

def multiply(arr)
    array_mult = arr.map { |x| [x] * arr.count }
	print "#{array_mult}\n"
end

multiply([4, 5]) #
multiply(["*", "%", "$"]) #
multiply(["A", "B", "C", "D", "E"]) #