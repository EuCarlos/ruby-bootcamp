friends = ["Kevin", "Karen", "Oscar", "Angela", "Andy"]

# First way to build a loop
for friend in friends
    puts friend
end

# Second way to build a loop
friends.each do |friend|
    puts friend
end

# Third way to build a loop
for index in 0..5
    puts index
end