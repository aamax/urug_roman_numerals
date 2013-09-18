def convertTens(anInteger)
# as long as I have something on the left side of the decimal, I must have a tens position
if ( (anInteger / 10) > 0)
tensInteger = anInteger / 10
case tensInteger
when 1
tensNumeral = "X"
when 2
tensNumeral = "XX"
when 3
tensNumeral = "XXX"
when 4
tensNumeral = "XL"
when 5
tensNumeral = "L"
when 6
tensNumeral = "LX"
when 7
tensNumeral = "LXX"
when 8
tensNumeral = "LXXX"
when 9
tensNumeral = "XC"
end
end
return tensNumeral
end

def convertOnes(anInteger)
if ( (anInteger % 0.1) > 0)
puts "testing"
#problem is here with integer to floating point conversion
puts (anInteger % 0.1)
onesInteger = anInteger % 0.1
case onesInteger
when 1
onesNumeral = "I"
when 2
onesNumeral = "II"
when 3
onesNumeral = "III"
when 4
onesNumeral = "IV"
when 5
onesNumeral = "V"
when 6
onesNumeral = "VI"
when 7
onesNumeral = "VII"
when 8
onesNumeral = "VIII"
when 9
onesNumeral = "IX"
end
end
return onesNumeral
end

result = convertTens(99).to_s + convertOnes(99).to_s
puts result