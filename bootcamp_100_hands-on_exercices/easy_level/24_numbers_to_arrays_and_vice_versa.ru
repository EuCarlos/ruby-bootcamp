# to_array(), which converts a number to an array of its digits
# to_number(), which converts an array of digits back to its number

def to_array(num)
	puts num.to_s.chars.map(&:to_i)
end

def to_number(arr)
	puts arr.join.to_i
end

to_array(154) # [1,5,4]
to_array(9) #[9]

to_number([1, 5, 4]) # 154
to_number([9]) # 9