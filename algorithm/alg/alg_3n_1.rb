# 3n+1 problem
def cycle_len n
    steps = 1
    while n != 1
        if n % 2 == 0
            n = n / 2
        else
            n = 3 * n + 1
        end
        steps+=1
    end
    return steps
end

def max_cycle i, j
    max = cycle_len i
    k = i+1
    while k <= j
        current_cycle = cycle_len k
        if current_cycle > max
            max = current_cycle
        end
        k+=1
    end
    return "#{i} #{j} #{max}"
end

puts max_cycle 1,10
puts max_cycle 100,200
puts max_cycle 201,210
puts max_cycle 900,1000