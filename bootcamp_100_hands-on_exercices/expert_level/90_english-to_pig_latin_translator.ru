def translate_word(word)
    return '' if word.empty?
    
    return word + 'yay' unless word[0].match(/[aeuio]/i).nil?
    new_str = word[/[aeuio]\w*/i] + word[/[^aeuio]+/i] + 'ay'
    puts word == word.capitalize ? new_str.capitalize : new_str
end
    
def translate_sentence(sentence)
    print sentence.gsub(/\w+/) { |w| translate_word(w) }
end

translate_word("flag") # "agflay"
translate_word("Apple") # "Appleyay"
translate_word("Carlos") # "Arloscay"
translate_word("button") # "uttonbay"
translate_word("") # ""

translate_sentence("I like to eat honey waffle.") # "I like to eat honey waffles."
translate_sentence("Do you think it is going to rain today?") # "Oday ouyay inkthay ityay isyay oinggay otay ainray odaytay?"