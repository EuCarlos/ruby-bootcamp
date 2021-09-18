=begin
    Create a function that returns the characters from an array or string r on odd or even positions, 
    depending on the specifiers s. The specifier will be "odd" of items on positions (1, 3, 5, ...) 
    and "even" for items on even positons (2, 4, 6, ...).
=end

def char_at_pos(r, s)
	answer1 = []
    answer2 = ""
    counter = 0

    length = r.length

    while counter < length
        item = r[counter]

        if (r.class == Array) && (s == "even") && (counter.even? == false)
            answer1.push(item)
            counter += 1
        elsif (r.class == Array) && (s == "odd") && (counter.even? == true)
            answer1.push(item)
            counter += 1
        elsif (r.class == String) && (s == "even") && (counter.even? == false)
            answer2 = answer2 + item
            counter += 1
        elsif (r.class == String) && (s == "odd") && (counter.even? == true)
            answer2 = answer2 + item
            counter += 1
        else
            counter += 1
        end
    end

    if answer1.length > 0
        print "#{answer1} \n"
    else
        print "#{answer2} \n"
    end
end

char_at_pos([2, 4, 6, 8, 10], "even") # [4, 8]

char_at_pos("EDABIT", "odd") # "EAI"

char_at_pos(["A" , "R" , "B" , "I" , "T" , "R" , "A" , "R" , "I" , "L" , "Y"], "odd") # ["A", "B", "T", "A", "I", "Y"]