=begin
    Write a function that sorts an array of characters alphabetically in ascending order (a-z) by 
    the character at the n-th character.
=end

def sort_by_character(arr, n)
	puts arr.sort_by { |x| x[n - 1] }
end

sort_by_character(["az16", "by35", "cx24"], 2) # ["cx24", "az16", "by35"]