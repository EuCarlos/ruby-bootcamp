def remove_duplicates(arr)
	puts arr.uniq
end

remove_duplicates([1, 0, 1, 0]) # [1, 0]
remove_duplicates(["dog", "cat", "bird", "cat"]) # ["dog", "cat", "bird"]
