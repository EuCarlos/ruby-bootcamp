numInt1 = 10       # result -> 10
numInt2 = -15      # result -> -10
numFloat = 3.64    # result -> 3.14
sum = 2 + 3        # result -> 5
subt = 5 - 2       # result -> 3
mult = 5 * 5       # result -> 25
div = 100 / 2      # result -> 50
divModule = 10 % 2 # result -> 0
exponent = 2 ** 2 # result -> 4

puts ("For display a number here, should convert to string\nexample: " + numInt1.to_s)

puts (
    "Value Absoulte: " + numFloat.abs() + 
    "Value Round: " + numFloat.round() + 
    "Value Ceil: " + numFloat.ceil() +
    "Value Floor: " + numFloat.floor() +
    "Square root" + Math.sqrt(36)
)