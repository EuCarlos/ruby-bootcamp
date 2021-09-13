# Create a function that takes an array of numbers between 1 and 10 (excluding one number) and returns the missing number.
def missing_num(arr)
	puts ((1..10).to_a - arr).first
end

missing_num([1, 2, 3, 4, 6, 7, 8, 9, 10]) # 5
missing_num([7, 2, 3, 6, 5, 9, 1, 4, 8]) # 10