def is_prime(num)
	conditional = (num != 1) && !(2..num-1).any? { |x| num % x == 0 }
    if conditional == true
        puts num + " is a prime number \n"
    elsif conditional == false
        puts num + " isn't a prime number \n"
	else
        puts num + " Invalid value \n"
	end
end

is_prime(31) # true
is_prime(18) # false
is_prime(59) # true