# He only server drinks to people 18 and older and when when he's not on break
def should_serve_drinks(a,o)
    return a >= 18 && !o
end

should_serve_drinks(17, true) # false
should_serve_drinks(18, true) # true