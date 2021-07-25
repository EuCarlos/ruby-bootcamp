puts "Enter a number:"
firstNumber = gets.chomp()

puts "Enter another number:"
secondNumber = gets.chomp()

sumNumbersInt = firstNumber.to_i + secondNumber.to_i
sumNumberFloat = firstNumber.to_f + secondNumber.to_f

puts sumNumbersInt
# puts sumNumberFloat