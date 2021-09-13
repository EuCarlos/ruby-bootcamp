=begin
    You have an array of item codes with the following format "[letters][digits]"
    Create a function that splits these strings into their alphabetic and numeric parts
=end

def split_code(item)
	print [item.gsub(/\d/, ''), item.gsub(/[A-Z]/,'').to_i]
end

split_code("clo11423")