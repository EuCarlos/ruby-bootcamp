# Create a function that takes a hash of student names and returns an array of student names in alphabetical order.
def get_student_names(s)
    print s.values.sort
end

get_student_names({
    "student 1" => "Steve",
    "student 2" => "Becky",
    "student 3" => "John"
}) # 
get_student_names() # 
get_student_names() # 