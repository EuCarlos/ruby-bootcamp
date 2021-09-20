def dif_ciph(input)
    if input.is_a?(String)
      print [input.chars.map(&:ord)[0]] + input.chars.map(&:ord).each_cons(2).map { |a, b| b - a }
    else
      print input[1..-1].each_with_object(input[0].chr) { |x, res| res << (res[-1].ord + x).chr }
    end
end

dif_ciph("Carlos") # [67, 30, 17, -6, 3, 4]

dif_ciph([67, 30, 17, -6, 3, 4]) # "Carlos"