def atbash(str)
    cipher = ""
    chars = str.split('')
    
    chars.each{ |c|
        if 'a' <= c && c <= 'z' then
            cipher += (122 - (c.ord - 97)).chr
        elsif 'A' <= c && c <= 'Z' then
            cipher += (90 - (c.ord - 65)).chr
        else
            cipher += c
        end
    }
    
    puts cipher
end

atbash("apple") # "zkkov"
atbash("Hello Word!") # "Svool dliow!"
atbash("Christmas is the 25th of December") # "Xsirhgnzh rh gsv 25gs lu Wvxvnyvi"