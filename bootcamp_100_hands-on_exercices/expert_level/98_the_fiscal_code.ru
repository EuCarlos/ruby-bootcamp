$months = { "1" => "A", "2" => "B", "3" => "C", "4" => "D", "5" => "E", 
            "6" => "H", "7" => "L", "8" => "M", "9" => "P", "10" => "R", 
            "11" => "S", "12" => "T" 
} 

def fiscal_code(person)
    # surname - 1st 3 characters
    cons, vowels = [],[]
    person["surname"].upcase.chars.each do |c|
        if "AEIOU".include?(c)
            vowels << c
        elsif cons.size < 3
            cons << c
        end
    end

    code = (cons + vowels + ['X'])[0..2]
    # name - 2nd 3 characters
    cons, vowels = [],[]
    person["name"].upcase.chars.each do |c|
        if "AEIOU".include?(c)
            vowels << c
        elsif cons.size < 4
            cons << c
        end
    end

    if cons.size > 3
        cons.delete_at(1)
    end

    code += (cons + vowels + ['X'])[0..2]
    # split d.o.b.
    dob = person["dob"].split("/").map{ |p| p.to_i }
    dbg = "#{dob[2]%100}#{$months[dob[1].to_s] + (person['gender'] == 'F' ? (40 + dob[0]).to_s : (100+dob[0]).to_s[1..-1])}"
    # put it all together
    return code.join + dbg
end

print fiscal_code({
    "name" => "Carlos",
    "surname" => "Alves",
    "gender" => "M",
    "dob" => "01/03/1998"
}) # "LVSCLS98C01"