=begin
    Every month, Microny™️ (a big entertainment corporation) publishes a few free videogames 
    on their web store. You are working on a script that will notify you whenever the new 
    games are available for download. There is not a fixed date for the new releases, 
    but you know that it happens every first Tuesday of every month.

    Write a function that, given a year and a month, returns a string with the date of when 
    the new games will be available.
=end

require 'date'

def first_tuesday_of_the_month(year, month)
    date = Date.new(year, month)
    date += (2 - date.wday) % 7
    print date.strftime("%Y-%m-%d")
end

first_tuesday_of_the_month(1997, 1) # "1997-01-07"
first_tuesday_of_the_month(2021, 2) # "2021-02-02"
first_tuesday_of_the_month(2020, 3) # "2020-03-03"