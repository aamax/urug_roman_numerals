NUMERALS = {
  1000 => 'M',
  900 => 'CM',
  500 => 'D',
  400 => 'CD',
  100 => 'C',
  90 => 'XC',
  50 => 'L',
  40 => 'XL',
  10 => 'X',
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I',
}

def convert(num, str='')
  return str if num.zero?
  key, val = NUMERALS.detect {|k, v| k <= num }
  convert num-key, str+val
end

p convert(ARGV[0].to_i)