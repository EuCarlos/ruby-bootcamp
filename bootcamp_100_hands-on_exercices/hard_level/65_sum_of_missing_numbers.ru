# Create a function that returns the sum of missing numbers from the given array.
def sum_missing_numbers(arr)
	puts (arr.min()..arr.max).to_a.inject(:+) - arr.inject(:+)
end

sum_missing_numbers([4, 3, 8, 1, 2]) # 18
sum_missing_numbers([17, 16, 15, 10, 11, 12]) # 27
sum_missing_numbers([1, 2, 3, 4, 5]) # 0