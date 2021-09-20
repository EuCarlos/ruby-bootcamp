=begin
    Given a tic-tac-toe board, create a function that determines whether X won, O won, 
    or there's a tie.

    The board is represented as a 2-dimensional array. A board does not have to be completely 
    filled. Blank squares are represented with the letter "B". For each board, X begins and 
    O goes second.
=end

def who_won(board)
	return puts 'X' if board.one? { |x| x.count('X') == 3 } || board.transpose.one? { |x| x.count('X') == 3 } || (0..2).all? { |i| board[i][i] == 'X' } || (0..2).all? { |i| board[i][-1 - i] == 'X' }

    return puts 'O' if board.one? { |x| x.count('O') == 3 } || board.transpose.one? { |x| x.count('O') == 3 } || (0..2).all? { |i| board[i][i] == 'O' } || (0..2).all? { |i| board[i][-1 - i] == 'O' }

    puts 'Tie'
end

who_won([
    ["X", "O", "B"],
    ["B", "X", "O"],
    ["B", "B", "X"]
]) # "x"

who_won([
    ["O", "X", "O"],
    ["X", "O", "B"],
    ["O", "B", "X"]
]) # "O"

who_won([
    ["O", "O", "X"],
    ["X", "X", "O"],
    ["O", "O", "X"]
]) # "Tier"