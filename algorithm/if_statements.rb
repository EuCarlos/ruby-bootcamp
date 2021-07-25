isMale =  true
isTall = true
if isMale and isTall # and, or, !
    puts "You're tall male"
elsif isMale and !isTall
    puts "You're short male"
elsif !isMale and isTall
    puts "You're not male, but you're tall"
else
    puts "You either not male or not tall or both"
end