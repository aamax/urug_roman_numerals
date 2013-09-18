number = ARGV[0].to_i

def romanize(nr)
  return nr if nr > 5000
  if nr >= 1000
    "M" + romanize(nr - 1000)
  elsif nr >= 900
    "CM" + romanize(nr - 900)
  elsif nr >= 500
    "D" + romanize(nr - 500)
  elsif nr >= 400
    "CD" + romanize(nr - 400)
  elsif nr >= 100
    "C" + romanize(nr - 100)
  elsif nr >= 90
    "XC" + romanize(nr - 90)
  elsif nr >= 50
    "L" + romanize(nr - 50)
  elsif nr >= 40
    "XL" + romanize(nr - 40)
  elsif nr >= 10
    "X" + romanize(nr - 10)
  elsif nr >= 9
    "IX" + romanize(nr - 9)
  elsif nr >= 5
    "V" + romanize(nr - 5)
  elsif nr >= 4
    "IV" + romanize(nr - 4)
  elsif nr >= 1
    "I" + romanize(nr - 1)
  else
    ''
  end

end

puts romanize(number)