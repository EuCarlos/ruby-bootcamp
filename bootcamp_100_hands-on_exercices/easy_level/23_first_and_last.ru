# process a string in alphabetical order and in reverse
def first_and_last(word) 
    first = word.split('').sort.join
	last = word.split('').sort.reverse.join
	puts [first, last]
end

first_and_last('carlos') # [aclors, srolca]