def count_eatable_chocolates(total_money, cost_of_one_chocolate)
    total_money = total_money[/-?\d+/].to_i
    cost_of_one_chocolate = cost_of_one_chocolate[/-?\d+/].to_i
    return puts "Invalid Input" if total_money <= 0 || cost_of_one_chocolate <= 0
  
    x = total_money / cost_of_one_chocolate
    puts x + (x - 1) / 2
end

count_eatable_chocolates("4$", "1$") # 5

count_eatable_chocolates("55       $", "5$") # 16 

count_eatable_chocolates("I have 68$", "2$") #  50

count_eatable_chocolates("I got -68$ from my mom ", "2$") # "Invalid Input"