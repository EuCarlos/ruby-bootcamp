=begin
    Create a function that takes a 2D array as an argument and returns the number of people whose 
    view is blocked by a tall person. The concert stage is pointed towards the top of the 2D array 
    and the tall person (represented by a 2) blocks the view of all the people (represented by a 1) 
    behind them.

    NOTES:
    - There is only a maximum of 1 tall person in every column.
    - No view is blocked if the tall person is in the last row.
=end

def block(arr)
	ans = 0

    arr.transpose.each{ |row|
        if row.include? 2 then
            ans += [0, row.size - row.index(2) - 1].max
        end
    }

    puts ans
end

block([
    [1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1],
    [1, 1, 1, 1, 2],
    [1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1]
]) # 2

block([
    [1, 2, 1, 1],
    [1, 1, 1, 2],
    [1, 1, 1, 1],
    [1, 1, 1, 1]
]) # 5

block([
    [1, 1, 1, 1],
    [2, 1, 1, 2],
    [1, 1, 1, 1],
    [1, 1, 1, 1]
]) # 4