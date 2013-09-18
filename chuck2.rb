puts "What number do you want converted?"
number = gets.chomp.to_i

answer = "I" * number
answer.gsub!("I" * 1000, "M")
answer.gsub!("I" * 900, "CM")
answer.gsub!("I" * 500, "D")
answer.gsub!("I" * 400, "CD")
answer.gsub!("I" * 100, "C")
answer.gsub!("I" * 90, "XC")
answer.gsub!("I" * 50, "L")
answer.gsub!("I" * 40, "XL")
answer.gsub!("I" * 10, "X")
answer.gsub!("I" * 9, "IX")
answer.gsub!("I" * 5, "V")
answer.gsub!("I" * 4, "IV")


puts answer