File.open("employees.txt", "r") do |file|
    # puts file.readchar()
    puts file.readline()
    # puts file.readline()[2]
end

file.close()