=begin
    Create a function that takes an array of items and checks if the last item matches the rest of 
    the array concatenated together.

    NOTES:
    The array is always filled with items.
=end

def match_last_item(arr)
	puts arr[-1] == arr[0..-2].join
end

match_last_item(["rsq", "6hi", "g", "rsq6hig"]) # true
match_last_item([1, 1, 1, "11"]) # false
match_last_item([8, "thunder", true,"8thundertrue"]) # true