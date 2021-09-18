=begin
    Given an array of integers, return the largest gap between elements of the sorted version of 
    that array.
=end
def largest_gap(arr)
	arr.sort!
    gap = 0

    for i in 1..arr.size-1 do
        g = [gap, arr[i]-arr[i-1]].max
    end

    puts gap
end

largest_gap([9, 4, 26, 26, 0, 0, 5, 20, 6, 25, 5]) # 11

largest_gap([14, 13, 7, 1, 4, 12, 3, 7, 7, , 12, 11, 5, 7]) # 4

largest_gap([13, 3, 8, 5, 5, 2, 13, 6, 14, 2, 11, 4, 10, 8, 1, 9]) # 2