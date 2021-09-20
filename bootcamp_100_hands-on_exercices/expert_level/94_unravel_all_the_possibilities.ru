def unravel(str)
    a = [str]
    
    while !!a[0].match(/\[.*?\]/)
    divider = a[0].scan(/\[.*?\]/)[0].gsub(/[\[\]]/, "").split("|")
    a = divider.map{|x| a.map{|y| y.sub(/\[.*?\]/, x)}}.flatten
    end
    print a.sort
end

unravel("a[b|c|d|e]f") # ["abf", "acf", "adf", "aef"]

unravel("apple [pear|grape]") # ["apple pear", "apple grape"]