def string_pairs(str)
	puts (str + '*').scan /../
end

string_pairs("carlos") # ["ca", "rl", "os"]