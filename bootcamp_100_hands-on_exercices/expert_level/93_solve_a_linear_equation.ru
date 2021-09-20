def parse(s)
    if s[0] != '-' then s = '+' + s end
    "+-x".split('').each{ |c|
        s = s.gsub c, ' ' + c + ' '
    }
    terms = s.split(' ')
    coeff, const = 0, 0
    k = 1

    while k < terms.size do
        if (terms[k] == 'x') && (['+', '-'].include? terms[k-1]) then
            terms = terms[0..k-1] + [1] + terms[k..terms.size-1]
        end
        k += 1
    end

    x_positions = []

    for k in 0..terms.size-1 do
        if terms[k] == 'x' then x_positions << k end
    end

    x_positions.each{ |x_pos|
        sign = 1
        if terms[x_pos-2] == '-' then sign = -1 end
        coeff += sign * terms[x_pos-1].to_i
        terms[x_pos] = ''
        terms[x_pos-1] = ''
        terms[x_pos-2] = ''
    }

    for i in 0..terms.size-1 do
        if ['+', '-'].include? terms[i] then
            sign = 1
            if terms[i] == '-' then sign = -1 end
            const += sign * terms[i+1].to_i
        end
    end

    return coeff, const
end

def find_x(eq)
    idx_eq = eq.index('=')
    left_coeff, left_const = parse(eq[0..idx_eq-1])
    right_coeff, right_const = parse(eq[idx_eq+1..eq.length-1])
    coeff = left_coeff - right_coeff
    const = right_const - left_const

    if coeff == 0 then
        if const == 0 then
            puts "Infinite solutions"
        else
            puts "No solution"
        end
    end

    if const % coeff == 0 then
        sol = const / coeff
    else
        sol = (const.to_f / coeff).round(2)
    end
    puts "x=" + sol.to_s
end

find_x("4x-7=x+11") # "x=6"

find_x("3x=2x+x") # "Infinite solutions"

find_x("3x=3x+2") # "No solution"

find_x("-1-2x=15+x") # "x=-5.33"