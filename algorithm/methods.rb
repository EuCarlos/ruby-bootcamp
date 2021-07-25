def sayHi(name="NO_NAME", age"NO_AGE")
    puts ("Hi! " + name + ", you are " + age.to_s)
end

sayHi("Carlos", 23) # Return "Hi! Carlos, you are 23"
sayHi               # Return "Hi! NO_NAME, you are NO_AGE"