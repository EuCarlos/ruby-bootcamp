# create a function which takes a string of "name" and checks how much good is the given name. 
#A preloaded hash of alphabet "$scores" is available in code tab. Add up the letter of your name to get the total score.

# return your result as per following rules:
# score <= 60: 'not too good'
# 61 <= score <= 300: 'pretty good'
# 301 <= score <= 599: 'very good'
# score <= 600: 'the best'

$scores = {
    'A'=> 100, 'B'=> 14, 'C'=> 9, 'D'=> 28, 'E'=> 145, 'F'=> 12, 'G'=> 3,
    'H'=> 10, 'I'=> 200, 'J'=> 100, 'K'=> 114, 'L'=> 100, 'M'=> 25, 'N'=> 450,
    'O'=> 80, 'P'=> 2, 'Q'=> 12, 'R'=> 400, 'S'=> 113, 'T'=> 405, 'U'=> 11, 
    'V'=> 10, 'W'=> 10, 'X'=> 3, 'Y'=> 210, 'Z'=> 23
        }
def name_score(name)
    score = 0
    name.upcase.delete(" ").each_char do |char|
      score += $scores[char]
    end
        if score <= 60
            message = 'NOT TOO GOOD'
        elsif score <= 300
            message = 'PRETTY GOOD'
        elsif score <= 599
            message = 'VERY GOOD'
        else
            message = 'THE BEST'
        end
    end

  puts message
end

name_score("carlos")