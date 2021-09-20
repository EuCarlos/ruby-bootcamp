def rolling_cipher(str, n)
    cipher = ""
    
    str.split('').each{ |char|
        cipher += (97 + (char.ord - 97 + n) % 26).chr
    }

    puts cipher
end

rolling_cipher("abcd", 1) # "bcde"
rolling_cipher("abcd", -1) # "zabc"
rolling_cipher("abcd", 3) # "defg"
rolling_cipher("abcd", 26) # "abcd"