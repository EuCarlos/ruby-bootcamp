=begin
    In probability theory, a probability matrix is a matrix such that:
        - The matrix is a square matrix (same number of rows as columns).
        - All entries are probabilities, i.e. numbers between 0 and 1.
        - All rows add up to 1.

    Note that though all rows add up to 1, there is no restriction on the columns, which may or may not add up to 1.
    Write a function that determines if a matrix is a probability matrix or not.
=end
def is_prob_matrix(arr)
	return puts false if arr[0].size != arr.size

    arr.each { |row|
        if row.min < 0 or row.max > 1 or row.reduce(:+) != 1.0 then
            return puts false
        end
    }

    return puts true
end