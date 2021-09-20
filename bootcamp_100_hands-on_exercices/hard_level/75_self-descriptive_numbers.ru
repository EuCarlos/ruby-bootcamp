=begin
    The number 10213223 it self-descriptive. Count the number of zeros, ones twos, and threes that are contained in 
    this number and you have 1 zero, 2 ones, 3 threes, but that is a replica of the number it self 10|21|32|23

    Write a function that returns true if its argument is a self-descriptive number, false if not.
=end

def self_descriptive(n)
    n = n.to_s
    result = n.size.even? && n.chars.each_slice(2).all? { |c, x| n.count(x) == c.to_i }
    puts result
end

self_descriptive(22) # true
self_descriptive(3999) # false
self_descriptive(31331419) # true
self_descriptive(21321316) # false
self_descriptive(4132232416171) # false
self_descriptive(31331819) # true