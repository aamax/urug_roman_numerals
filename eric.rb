INCOMPLETE!!!

puts "Enter a number between 1 and 4999:"
num = gets.chomp.to_i



def number_hash(num)
  ret = {
    :m => 0,
    :d => 0,
    :c => 0,
    :l => 0,
    :x => 0,
    :v => 0,
    :i => 0
  }

  ret['m'] = num / 1000
  m_mod = num % 1000

  ret['d'] = m_mod / 500
  d_mod = m_mod % 500

  ret['c'] = d_mod / 100
  c_mod = d_mod % 100

  ret['l'] = c_mod / 50
  l_mod = c_mod % 50

  ret['x'] = l_mod / 10
  x_mod = l_mod % 10

  ret['v'] = x_mod / 5
  v_mod = x_mod % 5

  ret['i'] = v_mod / 1
  i_mod = v_mod % 1

  ret
end

def roman_numerals(hsh)
  ret = []
  keys = %w{ m d c l x v i }
  keys.each_with_index.each do |kk, i|
    vv = hsh[kk] # This is the number of occurances of this letter
    if vv == 4 && kk != 'm' # If it occurs 4 times, modify
      ret << kk + keys[i-1]
    else
      ret << kk * vv # e.g. CCC
    end
  end
  ret.join.upcase
end

hsh = number_hash(num)
puts roman_numerals(hsh)