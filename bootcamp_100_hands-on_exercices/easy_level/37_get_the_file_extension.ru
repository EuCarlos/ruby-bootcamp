# Write a function that maps files to their extensions names
def get_extension(arr)
    arr.collect do |file|
        puts file.split('.').pop 
    end
end

get_extension(["code.html", "code.css"]) # ["html", "css"]
get_extension(["project1.jpg", "project1.pdf", "project1.mp3"]) # ["jpg", "pdf", "mp3"]
get_extension(["ruby.rb", "cplusplus.cpp", "python.py", "javascript.js"]) # ["rb", "cpp", "py", "js"]