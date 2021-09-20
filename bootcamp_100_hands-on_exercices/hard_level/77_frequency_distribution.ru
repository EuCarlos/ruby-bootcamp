=begin
    Create a function that returns the frequency distribution of an array. This function should return a hash, where the keys 
    are the unique elements and the values are the frequency in which those elements occur.

    If given an empty array, return an empty hash.
    The object should be in the same order as in the input array.
=end

def get_frequencies(arr)
    puts arr.each_with_object(Hash.new(0)) { |e, h| h[e] += 1 }
end

get_frequencies(["A", "B", "A", "A", "A"]) # {"A"=>4, "B"=>1}
get_frequencies([1, 2, 3, 3, 2]) # {1=>1, 2=>2, 3=>2}
get_frequencies([true, false, true, false, false]) # { true=>2, false=>3}