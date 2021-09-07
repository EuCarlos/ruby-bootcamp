# create a function to count the number of '1's in a 2D array
def count_ones(matrix)
	puts matrix.flatten.count(1)
end

count_ones([
    [1, 0],
    [0, 0]
]) # 1

count_ones([
    [1, 1, 1],
    [0, 0, 1],
    [1, 1, 1]
]) # 7
count_ones([
    [1, 2, 3],
    [0, 2, 1],
    [5, 7, 33]
]) # 2