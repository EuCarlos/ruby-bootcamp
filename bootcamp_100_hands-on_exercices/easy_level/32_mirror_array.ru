def mirror(arr)
    print arr + arr[0..-2].reverse
end

mirror([1, 2, 3, 4, 5]) # [1, 2, 3, 4, 5, 4, 3, 2, 1]