File.open("employees.txt", "a") do |file|
    file.wrire("\nCarlos, Developer")
end

file.close()