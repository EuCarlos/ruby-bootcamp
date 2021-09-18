=begin
    Write a function tht takes arrays (arr1 and arr2) and int n, and returns true if the second 
    equals the first array shifted by n positions. Otherwise, return 'alse
=end

def circular_shift(arr1, arr2, n)
    puts arr1.rotate(n) == arr2 ? true : false
end

circular_shift([1, 2, 3, 4], [3, 4, 1, 2], 2) # true

circular_shift([1, 1], [1, 1], 6)  # true

circular_shift([0, 1, 2, 3, 4, 5], [3, 4, 5, 2, 1, 0], 3)  # false