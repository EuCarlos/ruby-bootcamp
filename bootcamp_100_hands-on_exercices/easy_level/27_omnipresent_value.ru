=begin 
A value is "omnipresent if it exists in every subarray inside the main array
To illustrate:
    [[3, 4], [8, 3, 2], [3], [9, 3], [5, 3], [4, 3]]
Create a function that determines wheter an input value is omnipresent for a given array
=end

def is_omnipresent(arr, val)
	puts arr.all? { |ar| ar.include?(val) }
end

is_omnipresent([[3, 4], [8, 3, 2], [3], [9, 3], [5, 3], [4, 3]], 3) # true
is_omnipresent([[3, 4], [8, 3, 2], [3], [9], [5, 3], [4, 3]], 3) # false