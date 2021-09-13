=begin  
    Create a function which takes in a word and spell it out, by consecutively adding letters 
    until the full word is completed
=end

def spelling(str)
    print (0..(str.size - 1)).map { |l| str[0..l]}
end

spelling("bee") # ["b", "be", "bee"]
spelling("happy") # ["h", "ha", "hap", "happ", "happy"]
spelling("eagerly") # ["e", "ea", "eag", "eage", "eager", "eagerl", "eagerly"]