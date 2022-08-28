=begin
Input: M =  [-3, -2, -1, 1]
            [-2,  2,  3, 4]
            [ 4,  5,  7, 8]
Output: 4
We have 4 negative numbers in this matrix
=end

def count_negative input
    count_negative_total = 0
    
    input.each do |array|
        array.each do |value|
            if value < 0
                count_negative_total+=1
            end
        end
    end
    return count_negative_total
end

input = [
    [-3, -2, -1, 1],
    [-2,  2,  3, 4],
    [ 4,  5,  7, 8]
]

puts count_negative(input)
