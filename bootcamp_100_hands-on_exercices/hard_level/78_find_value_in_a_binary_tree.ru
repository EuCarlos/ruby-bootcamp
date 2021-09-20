def is_val_in_tree(tree, val)
    return true if tree.is_a?(Array) && tree[0] == val

    return false if tree.nil? || tree[1].nil? && tree[2].nil?

    puts is_val_in_tree(tree[1], val) || is_val_in_tree(tree[2], val)
end
array1 = [3, [8, [5, nil, nil],nil], [7, nil, nil]]

is_val_in_tree(array1, 5) # true
is_val_in_tree(array1, 9) # false
is_val_in_tree(array2, 51) # false