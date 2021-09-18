=begin
    Given two words, the letter distance is calculated by taking the absolute value of the 
    difference in character codes and summing up the difference.

    If one word is longer than another, add the difference in lenghts towards the score.
=end

def letter_distance(str_1, str_2)
	l1, l2 = str_1.length, str_2.length
    ans = (l1 - l2).abs
    
    for i in 0..[l1, l2].min-1 do
        ans += (str_1[i].ord - str_2[i].ord).abs
    end
    
    print ans
end

letter_distance("sharp", "sharq") # 1

letter_distance("abcde", "Abcde") # 32

letter_distance("abcde", "bcdef") # 5