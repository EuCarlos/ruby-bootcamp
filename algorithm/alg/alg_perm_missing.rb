#PermMissingElement
def solution input
    first_sum = 0
    second_sum = 0
    total = input.length
    
    index = 0
    while index < total
        first_sum+=input[index]
        second_sum+=index+1
        index+=1
    end
    second_sum+=total+1
    return second_sum-first_sum
end

puts solution [5,3,1,4]
puts solution [2,5,3,1]
puts solution [5,2,1,4]
puts solution [1,3,2,4]
puts solution [4,3,2,5]