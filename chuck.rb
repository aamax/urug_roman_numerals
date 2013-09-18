# I DRYed this up. It was this same code repeated for each entry in the array.

puts "What number do you want converted?"
number = gets.chomp.to_i

answer = ""

[["M", 1000, "CM", 900],
 ["D", 500, "CD", 400],
 ["C", 100, "XC", 90],
 ["L", 50, "XL", 40],
 ["X", 10, "IX", 9],
 ["V", 5, "IV", 4]].each do |rtop, atop, rnext, anext|
  while number >= anext
    if number >= atop
      answer << rtop
      number -= atop
    else
      answer << rnext
      number -= anext
    end
  end
end


1.upto(number).each do |i|
  answer << "I"
end

puts answer