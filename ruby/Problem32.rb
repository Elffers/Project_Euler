# We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

# The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.

# Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.

# HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.

def mults(n)
  digits = n.to_s.chars.map { |x| x.to_i }
  mults = (1..9).reject { |x| digits.include? x }
  # keeps multipliers as string
  mults

end


def combos(n)
  multipliers, multiplicands = mults(n)
  multipliers.zip(multiplicands)
end

def digits(num)
  num.to_s.chars.map { |x| x.to_i }
end

def to_num(digit_array)
  digit_array.map{ |x| x.to_s }.join("").to_i
end


