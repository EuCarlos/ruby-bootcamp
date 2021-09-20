=begin
    Write a function that returns the closest palindrome number to an interger. 
    If two palindrome numbers tie in absolute distance, return the smaller number.

    If the number itself is a palindrome, return that number.
=end
def palindrome?(x) (x = x.to_s).reverse == x end

def closest_palindrome(n)
    m = n - 1        
    loop do        
        return puts n if palindrome?(n)        
        return puts m if palindrome?(m)       
        puts n += 1; m -= 1
    end 
end

closest_palindrome(887) # 888
closest_palindrome(100) # 99
closest_palindrome(888) # 888
closest_palindrome(27) # 22