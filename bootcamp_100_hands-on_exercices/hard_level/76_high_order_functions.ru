=begin
    Write a function that maps a string into an array of name, string, and occupation pairs.

    Return an empty array if given an empty string.
=end

def organize(str)
    puts str.split(', ').each_slice(3).map {
        |t| [t[0], t[1], t[2]]
    }.map { 
        |x| {
            :name => x[0], 
            :age => x[1], 
            :occupation => x[2] 
        }
    }
end

organize("John Mayer, 41, Singer, Emily Blunt, 36, Actor")
# [{:name=>"John Mayer",  :age=>"41", :occupation=>"Singer"}, {:name=>"Emily Blunt",  :age=>"36", :occupation=>"Actor"}]

organize("Conan O'Brien, 56, Talk Show Host, Anna Wintour, 69, Editor") 
# [{:name=>"Conan O'Brien",  :age=>"56", :occupation=>"Talk Show Host"}, {:name=>"Anna Wintour",  :age=>"69", :occupation=>"Editor"}]

organize("") # []