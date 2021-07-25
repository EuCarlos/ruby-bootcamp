def getDayName(day)
    dayName = ""

    case day
    when "mon"
        dayName = "Monday"
    when "tue"
        dayName = "Tuesday"
    when "wed"
        dayName = "Wednsday"
    when "thu"
        dayName = "Thursday"
    when "fri"
        dayName = "Friday "
    when "sat"
        dayName = "Saturday"
    when "sun"
        dayName = "Sunday"
    else
        dayName = "Invalid abbreviatio 😢"
    end

    return dayName
end

puts getDayName("fri")

