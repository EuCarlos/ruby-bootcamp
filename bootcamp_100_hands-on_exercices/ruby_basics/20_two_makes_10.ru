# Create a function that takes two arguments. Both arguments are intergers, a and b. Return true if one of them is 10 or if their sum is 10
def makes10(a, b)
	return puts [a, b, a + b].include? 10
end

makes10(9, 10) # true
makes10(9, 9) # false
makes10(4, 6) # true