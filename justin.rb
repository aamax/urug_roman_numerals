LETTERS = [ ["M", 1000],
            ["CM", 900],
            ["D", 500],
            ["CD", 400],
            ["C", 100],
            ["XC", 90],
            ["L", 50],
            ["XL", 40],
            ["X", 10],
            ["IX", 9],
            ["V", 5],
            ["IV", 4],
            ["I", 1] ]

def romanize number
  num = number
  count = 0
  LETTERS.map{|l,v| count, num = num.to_i.divmod v; l*count}.join ''
end
puts 'Input number to Convert to Roman Numeral:'
input = gets
puts romanize(input)