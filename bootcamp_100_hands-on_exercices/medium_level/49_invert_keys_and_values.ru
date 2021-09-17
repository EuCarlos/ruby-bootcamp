# Write a function that inverts the keys and values of a hash.
def invert(hash)
	print hash.invert
end

invert({
    "z" => "q",
    "w" => "f"
}) #  { "q" => "z", "f" => "w" }

invert({
    "zebra" => "koala", 
    "horse" => "camel"
}) # { "koala" => "zebra", "camel" => "horse" }

invert({
    1 => "a",
    2 => "b",
    3 => "c"
}) # { "a" => 1, "b" => 2, "c" => 3 }