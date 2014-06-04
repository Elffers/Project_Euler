# An irrational decimal fraction is created by concatenating the positive integers:

# 0.123456789 10111213141516171819 2021...

# It can be seen that the 12th digit of the fractional part is 1.

# If dn represents the nth digit of the fractional part, find the value of the following expression.

# d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000

# Returns array of strings of digits
def concat(num)
  (1..num).to_a.join
end

def digits(array)
  array.map {|x| x.to_i}
end

d = concat(1000000).chars
d[0].to_i * d[9].to_i * d[99].to_i * d[999].to_i * d[9999].to_i * d[99999].to_i * d[999999].to_i
