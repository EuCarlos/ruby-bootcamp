=begin
    Create a function that takes a "base number" as an argument. This function should return another 
    function which takes a new argument, and returns the sum of the "base number" and the new argument.

    Please check the examples below for a clearer representation of the behavior expected.
=end
def plus_function(num)
	puts Proc.new { |x| x + num}
end

plus_function(5)