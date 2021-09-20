# Write a function that counts the number of times a specific digit occurs in a range (inclusive).
def digit_occurrences(min, max, digit)
    cont = 0
    
    while min<=max do
      cont += min.to_s.count(digit.to_s)
      min += 1
    end
    return puts cont  
end

digit_occurrences(1, 8, 9) # 0
digit_occurrences(-8, -1, 8) # 1
digit_occurrences(71, 77, 2) # 1