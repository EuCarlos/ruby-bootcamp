def valid_name(name)
    return puts false unless name.split.size.between?(2, 3)
    return puts false unless '' == name.gsub(/\b[A-Z](\.|[a-z]+)/,'').strip
    inits = name.split.map { |w| !!(w =~ /^[A-Z]\./) }
    return puts false if inits[-1]
    return puts false if [true, false, false] == inits
    puts true
  end

  valid_name("Carlos") # false
  valid_name("Carlos Alves") # true
  valid_name("Carlos A.") # false
  valid_name("C. Alves") # true
  valid_name("C. A.") # false