=begin
    For each number in a array, check if that number is greater than the sum of all numbers that 
    appear before it in the array. If all numbers in the array pass this test, return true. 
    return false otherwise.
=end
def greater_than_sum(nums)
	puts (1...nums.size).all? { |i| nums[0...i].inject(:+) < nums[i] }
end

greater_than_sum([2, 3, 7, 13, 28]) # true
=begin
    3 > 2 -> true
    7 > 2 + 3 -> true
    13 > 2 + 3 + 7 -> true
    28 > 2 + 3 + 7 + 13 -> true
=end