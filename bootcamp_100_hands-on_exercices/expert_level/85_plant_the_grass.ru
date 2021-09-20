=begin
    You will be given a matrix representing  a field g and two numbers x, y coordiane.
    There are three types of possible characters in the matrix:
        - x representing a rock
        - o representing a dirt space
        - + representing a grassed space
        You have to simulate grass growing from the position (x, y). Grass can grow in all four directions (up, left, right, down). 
        Grass can only grow on dirt spaces and can't go past rocks.

        Return the simulated matrix.
=end

def simulate_grass(g, x, y)
    queue = [[x, y]]
  
    until queue.empty?
      qx, qy = queue.shift
      g[qy][qx] = "+"
      [[1, 0], [-1, 0], [0, 1], [0, -1]].each do |dx, dy|
        queue << [qx + dx, qy + dy] if g[qy + dy][qx + dx] == "o"
    end
end

puts g
end

simulate_grass([
    "xxxxxxx",
    "xooooox",
    "xxxxoox",
    "xoooxxx",
    "xxxxxxx"
], 1, 1) # ["xxxxxxx", "xooooox", "xxxxoox", "xoooxxx", "xxxxxxx"]