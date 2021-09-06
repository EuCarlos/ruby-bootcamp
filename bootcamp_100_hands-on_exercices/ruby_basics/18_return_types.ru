def list_values_types(arr)
	return arr.map { |x| x.class }
end

list_values_types([1, 10]) # [Fixnum, Fixnum]
list_values_types([["Hello", 1], 20]) # [Array, Fixnum]