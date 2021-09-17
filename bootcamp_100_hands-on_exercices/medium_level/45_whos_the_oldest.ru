# Given a hash containing the names and ages of a group of people, return the name of the oldest person.

def oldest(people)
	puts people.key(people.values.max)
end

oldest({
    "Emma" => 71,
    "Jack" => 45,
    "Amy"  => 15,
    "Ben"  => 29
}) # Emma

oldest({
    "Max"  => 9,
    "Josh" => 13,
    "Sam"  => 48,
    "Anny" => 33
}) # Sam