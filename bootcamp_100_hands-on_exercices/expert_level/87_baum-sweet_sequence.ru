$seq = [1]

for i in 1 .. 100000 do
    m = i

    while m > 0 && m % 4 == 0 do
        m = m / 4
    end

    if m % 2 == 0 then
        $seq << 0
    else
        $seq << $seq[(m - 1) / 2]
    end
end



def baum_sweet(n)
    if n == 0 then return puts "0" end

    ans = "0"

    for i in 1 .. n do
        ans += $seq[i].to_s
    end

    puts ans
end

baum_sweet(0)   # 0
baum_sweet(1)   # 01
baum_sweet(10)  # 01011001010