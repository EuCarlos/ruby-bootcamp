=begin
    Given an array of numbers, create a function that removes 25% from every number in the array 
    except the smallest number, and adds the total amount removed to the smallest number.
=end

def show_the_love(arr)
	m =arr.min
    add = 0

    arr.each{ |k| if k != m then add += 0.25 * k end }

    for i in 0..arr.size-1 do
        if arr[i] == m then
            arr[i] += add
        else
            arr[i] *= 0.75
        end
    end

    print "#{arr} \n"
end

show_the_love([4, 1, 4]) # [3, 3, 3]
show_the_love([16, 10, 8]) # [12, 7.5, 14.5]
show_the_love([2, 100]) # [24, 75]