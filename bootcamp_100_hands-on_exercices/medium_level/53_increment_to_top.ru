=begin
    Create a function that returns the total number of steps it takes to transform each 
    element to the maiximal element in the array. Each step consists of incrementing a digit by one.
=end

def increment_to_top(arr)
	m = arr.max
    count = 0
    arr.each { |n| count += (m - n) }
    puts count
end

increment_to_top([3, 4, 5]) # 3
increment_to_top([4, 3, 4]) # 1
increment_to_top([3, 3, 3]) # 0
increment_to_top([3, 10, 3]) # 14