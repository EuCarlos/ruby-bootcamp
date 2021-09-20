def numbers_range(ranges)
    ranges.chunk_while { |i, j| j - i == 1 }.map do |x|
      x.size > 2 ? "%d-%d" % [x[0], x[-1]] : x.to_s[1..-2]
    end.join(", ")
end

numbers_range([-3, -2, -1, 2, 10, 15, 16, 18, 19, 20]) # "-3--1,2,10,15,16,18,19,-20"

numbers_range([1, 2, 3, 9, 10, 15, 16, 18, 56, 57]) # "1-3,9,10,15,16,18,56,57"