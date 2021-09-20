def caesar_cipher(s, k)
    k = k % 26    
    cipher = ""

    s.split('').each { |char|
        if 'a' <= char && char <= 'z' then
            cipher += (97 + (char.ord - 97 + k) % 26).chr
        elsif 'A' <= char && char <= 'Z' then
            cipher += (65 + (char.ord - 65 + k) % 26).chr
        else
            cipher += char
        end
    }

    puts cipher
end

caesar_cipher("Carlos", 2) # Ectnqu

caesar_cipher("Ruby", 10) # Beli

caesar_cipher("Hello Word!", 6) # Nkrru Cuxj!