=begin
    Createte a function that an array of booleans that represent whether or not a player has logged 
    into a game that day. Output the longest streak of consecutive logged in days.

    Notes: 
    - Return your output as an integer. 
    - If a given array is all 'false', return '0' 
=end

def daily_streak(arr)
    puts arr.chunk_while { |a, b| a == b }.map { |a| a.count(true) }.max  
end

daily_streak([true, true, false, true]) # 2
daily_streak([false, false, false]) # 0
daily_streak([true, true, true, false, true]) # 3