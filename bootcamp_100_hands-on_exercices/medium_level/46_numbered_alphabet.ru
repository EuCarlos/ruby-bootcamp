# Create a function that converts a string of letters to their respective number in the alphabet.
def alph_num(str)
    puts str.chars.map { |c| c.ord - 65 }.join(" ")
end

alph_num("XYZ") # "23 24 25"
alph_num("ABCDEF") # "0 1 2 3 4 5"
alph_num("JAVASCRIPT") # "9 0 21 0 18 2 17 8 15 19"