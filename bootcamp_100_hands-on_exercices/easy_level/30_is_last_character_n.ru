=begin 
    Create a function that takes a string (a random name). 
    If the last character of the name is an "n", return 'true', otherwise return 'false'
=end

def is_last_character_n(word)
	puts word.end_with?('n')
end

is_last_character_n("Carlos") # false
is_last_character_n("Maicon") #true