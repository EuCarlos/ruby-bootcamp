def same_letter_pattern(x, y)
    return puts false if x.size != y.size
    s = {}
    
    x.chars.zip(y.chars){|a,b|
    if !s.include? a then
        s[a] = b
    elsif s[a] != b then
        return puts false
    end
    }
    puts true
end

same_letter_pattern("ABAB", "CDCD") # true

same_letter_pattern("FFFF", "ABCD") # false