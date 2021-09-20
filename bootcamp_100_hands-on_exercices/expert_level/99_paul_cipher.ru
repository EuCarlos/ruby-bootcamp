def paul_cipher(txt)
    txt.upcase!
    offset = [0] + txt.scan(/[A-Z]/).map { |c| c.ord - 64 }
    puts txt.gsub(/[A-Z]/) { |c| (((c.ord - 65) + offset.shift) % 26 + 65).chr }
end

paul_cipher("muBas41r") # MHWCT41K

paul_cipher("a1rForce") # A1SXUGUH

paul_cipher("MATT") # MNUN