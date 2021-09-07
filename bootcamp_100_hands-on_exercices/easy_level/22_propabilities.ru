# given an array of numbers and a value n, write a function that returns the probability of choosing a number greater than or equal to n from the array. The probability should be expressed as a percentage, roundend to one decimal place.
def probability(arr, num)
	puts (arr.select{|x| x >= num}.length.to_f / arr.length * 100).round(1)
end

probability([5, 1, 8, 9], 6)
