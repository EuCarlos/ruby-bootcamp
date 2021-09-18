=begin
    A Kaprekar Number is a positive integer that, after being squared and split into two 
    lexicographical parts, is equal to the sum of the two new numbers obtained:

        - If the quantity of digits of the squared number is even, the left and right 
        parts will have the same length.
        - If the quantity of digits of the squared number is odd, then the right part 
        will be the longer half, with the left part being the shorter or equal to zero 
        if the quantity of digits is equal to 1.
    
    Given a positive interger n implement a function that returns true if it's a Kapreakar 
    number, and false if it's not.
=end

def is_kaprekar(n)
    m = (n ** 2).to_s
    a, b = [m[0...(m.size / 2)], m[(m.size / 2)..-1]].map(&:to_i)
    puts a + b == n
end

is_kaprekar(3) # false
# n² = "9"
# Left + Right = 0 + 9 = 9 -> 9 != 3

is_kaprekar(5) # false
# n² = "25"
# Left + Right = 2 + 5 = 7 -> 7 != 5 

is_kaprekar(297) # true
# n² = 88209
# Left + Right = 88 + 209 = 297 -> 297 == 297 