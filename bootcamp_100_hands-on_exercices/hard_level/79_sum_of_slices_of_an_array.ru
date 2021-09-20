def sum_of_slices(arr)
    res = []  
    sum = 0
  
    arr.each do |x|  
      if sum + x > 100  
        res << sum  
        sum = 0  
      end  
      sum += x  
    end  
    print res << sum  
end

sum_of_slices([58, 3, 38, 99, 10]) # [99, 99, 10]
sum_of_slices([13]) # [13]