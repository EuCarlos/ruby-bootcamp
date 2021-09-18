=begin
    Create a function which counts how many lone 1s appear in a given number. 
    Lone means the number doesn't appear twice or more in a row.

    Tests will include positive whole numbers only.
=end

def count_lone_ones(n)
	puts n.to_s.scan(/(?<!1)1(?!1)/).count
end

count_lone_ones(101) # 2
count_lone_ones(1191) # 1
count_lone_ones(1111) # 0
count_lone_ones(462) # 0