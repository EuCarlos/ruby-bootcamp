=begin
    Create a function that takes an array of names of superheroes and superheroines and 
    returns an array of only the names of superheroes ending in "man" in alphabetical order.
=end

def superheroes(heroes)
    puts heroes.sort.grep /(?<!wo)man$/i
end

# ["Batman", "Superman", "Spider-man"]
superheroes(["Batman",  "Superman", "Spider-man", "Hulk", "Wolverine", "Wonder-Woman"])

# ["Aquaman"]
superheroes(["Catwoman", "Deadpool", "Dr.Strange", "Captain-America", "Aquaman"])

# []
superheroes(["Wonder-Woman", "Catwoman", "Invisible-Woman"])