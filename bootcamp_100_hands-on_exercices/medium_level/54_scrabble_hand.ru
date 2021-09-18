=begin
    Given an array of scrabble tiles, create a function that outputs the maximum possible 
    score a player can achieve by summing up the total number of points for all the tiles in 
    their hand. Each hand contains 7 scrabble tiles.
=end

def maximum_score(hand)
	hand.reduce(0) { |sum, h| sum + h['score'] }
end

def maximum_score([
    { "tile" => "N", "score", 1 },
    { "tile" => "K", "score", 5 },
    { "tile" => "Z", "score", 10 },
    { "tile" => "X", "score", 8 },
    { "tile" => "D", "score", 2 },
    { "tile" => "A", "score", 1 },
    { "tile" => "E", "score", 1 }
]) # 28