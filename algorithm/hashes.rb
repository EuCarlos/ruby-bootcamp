states = {
    "Pennsylvania" => "PA",
    "New Yourk" => "NW",
    :Oregon => "OR"
}

# puts states
# puts states["Oregon"]
puts states[:Oregon]



# Another way to use hashes

balances = {
  'Carlos' => 1000,
  'Matheus' => 1200,
  'Pamela' => 1500,
  'Claudio' => 1700,
  'Vanessa' => 2200
}

balances.each_pair do |name, balance|
  puts "#{name} tem R$#{balance}"
end


sum = 0

balances.each_pair do |name, balance|
  sum+=balance
end
puts "___________________________"
puts "TOTAL = #{sum}"




# Sorting hashes

hash = {
  3 => 'c',
  1 => 'a',
  2 => 'b'
}

hash.keys.sort.each do |key|
  puts "#{key} : #{hash[key]}"
end