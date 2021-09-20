def classify_rug(pattern)

    vertical = pattern.all? { |p| p == p.reverse }
  
    horizontal = pattern.transpose.all? { |p| p == p.reverse }
  
    puts ["imperfect", "vertically symmetric", "horizontally symmetric", "perfect"][(vertical ? 1 : 0) + (horizontal ? 2 : 0)]
  
end

classify_rug([
    ["a", "a"],
    ["a", "a"]
]) # "perfect"

classify_rug([
    ["a", "a", "b"],
    ["a", "a", "a"],
    ["b", "a", "a"]
]) # "imperfect"

classify_rug([
    ["a", "b"],
    ["a", "b"]
]) # "horizontally symmetric"

classify_rug([
    ["a", "a"],
    ["b", "b"]
]) # "vertically symmetric"