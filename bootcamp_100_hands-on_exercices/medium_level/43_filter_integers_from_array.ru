=begin
    Create a function that takes an array of strings and integers, and filters out the array 
    so that it returns an array of integers only.
=end

def filter_array(arr)
	print arr.grep(Integer)
end

filter_array([1, 2, 3, "a", "b", 4]) #
filter_array(["A", 0, "Edabit", 1729, "1729"]) #