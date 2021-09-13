def left_shift(arr, num)
	print arr.rotate(num)
end

def right_shift(arr, num)
	print arr.rotate(-num)
end

left_shift([1, 2, 3, 4], 1) # [2, 3, 4, 1]
right_shift([1, 2, 3, 4], 1) # [4, 1, 2, 3]