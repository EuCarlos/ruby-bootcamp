=begin
    Create a function that takes a string as an argument and converts the first character of each 
    word to uppercase. Return the newly formatted string.
=end

def make_title(str)
    puts str.split(" ").map {|s| s.slice(0).upcase + s.slice(1..-1) }.join(' ')
end

make_title("This is a title") # This Is A Title
make_title("capitalize every word") # Capitalize Every Word
make_title("I Like Pizza") # I Like Pizza
make_title("PIZZA PIZZA PIZZA") # PIZZA PIZZA PIZZA