=begin 
    Create twofunctions:
        - The first is 'is_odd(n)' to check if a given number is odd using bitwise operator.
        - The second is 'is_even()' to check if a given input is even using regular expressions.
    Use of % operator is disalloawed.

    *** ATTENTION ***
        - Input will only be integers (positive/negative/zero).
        - For the second function, input will be numbers in string.
=end

# Use Bitwise Operator (% modulo operator disallowed)
def is_odd(n)
	puts n & 1 == 1 ? "Yes" : "No"
end

# Use Regular Expression (% modulo operator disallowed)
def is_even(n)
	puts n.to_s =~ /[02468]$/ ? "Yes" : "No"
end

is_odd(3)       # true
is_odd(58)      # false

is_even("0")    # true
is_even("-99")  # false