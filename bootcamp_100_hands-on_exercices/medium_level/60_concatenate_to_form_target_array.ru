=begin
    Create a function that returns true if smaller arrays can concatenate to form the target array 
    and false otherwise
=end

def can_concatenate(arr, target)
	print arr.flatten.sort == target.sort
end

can_concatenate([[1, 2, 3, 4], [7]], [1, 2, 3, 4, 5, 6, 7]) # true