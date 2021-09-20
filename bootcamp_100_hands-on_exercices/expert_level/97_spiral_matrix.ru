def spiral_matrix(side, string)
    dirns = [[-1,0],[0,1],[1,0],[0,-1]]
    dir, idx = 0, 0
    string += "+"*[side**2 - string.size, 0].max
    arr = Array.new(side).map{|_| Array.new(side)}
    r = c = side/2 - (side.even? ? 1 : 0)
    
    while idx < side**2
        arr[r][c] = string[idx]
        idx += 1
        dr, dc = dirns[(dir+1)%4]
            if arr[r+dr][c+dc] != nil
                dr, dc = dirns[dir]
            else
                dir = (dir+1)%4
            end
        r, c = r+dr, c+dc
    end
    arr
end
    
def spiralMatrix(side, string)
    spiral_matrix(side, string)
end

print spiral_matrix(3, "carlos")# 

print spiral_matrix(2, "dog") # 

print spiral_matrix(4, "superlumberjack") # 