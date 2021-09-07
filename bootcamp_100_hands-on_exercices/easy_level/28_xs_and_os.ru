# create a function that takes a string, check if it has the same number of x's and o's and return either true or false
def xo(str)
    str.downcase!
    conditional = str.count("o") == str.count("x")
	puts conditional
end
xo("ooxx") # true 
xo("xooxx") # false 
xo("ooxXm") #true