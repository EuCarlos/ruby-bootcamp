=begin  
    Write a function that inserts a white space between every instance of a lower character 
    followed immediately by an upper character.
=end

def insert_whitespace(s)
    puts s.gsub(/([a-z])([A-Z])/, '\1 \2')
end

insert_whitespace("SheWalksToTheBeach") # She Walks To The Beach
insert_whitespace("MarvinTalksTooMuch") # Marvin Talks Too Much
insert_whitespace("TheGreatestUpsetInHistory") # The Greatest Upset In History