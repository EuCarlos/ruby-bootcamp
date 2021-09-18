=begin
    Create a function that tests if a number is the exact upper bound of the factorial of n. 
    If so, return an array containing the exact factorial bound and n, or otherwise, 
    the string "Not exact!".
=end

def is_exact(n)
    i, m = 1, 1

    while n > m
        i += 1
        m *= i
    end
    
    conditional = n == m ? [n, i] : "Not exact!"
    print "#{conditional} \n"
end

is_exact(6) # [6, 3]
is_exact(24) # [24, 4]
is_exact(125) # Not exact!
is_exact(720) # [720, 6]
is_exact(1024) # Not exact!
is_exact(40320) # [40320, 8]