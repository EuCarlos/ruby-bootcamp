=begin
    Create a function that takes a binary string and returns the text. The eight bits on the 
    binary string represent 1 character on the ASCII table. For further info, check out the 
    resource tab.
=end

def binary_text(n)
    puts (0...n.size/8).map{|k| n[8*k, 8].to_i(2).chr}.join
end


binary_text("01101110011011110110010001100101") # node
binary_text('0111001001100101011000010110001101110100') # react
