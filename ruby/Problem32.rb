# We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

# The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.

# Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.

# HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.

def mults(n)
  digits = n.to_s.chars.map { |x| x.to_i }
  mults = (1..9).reject { |x| digits.include? x }
  # keeps multipliers as string
  n = mults.length / 2
  i = 1
  multipliers = []
  multiplicands = []
  while i <= n
    first =  mults.combination(i).flat_map { |chunk| chunk.permutation.to_a }
    multipliers.concat first
    second_strings = first.map { |x| x.join }.flat_map {|n| mults.join.delete n }
    second = second_strings.map { |x| all_digit_permutations x }
    multiplicands.concat second
    i += 1
  end
  return multipliers.map {|x| x.join.to_i}, multiplicands
end

def combos(n)
  multipliers, multiplicands = mults(n)
  multipliers.zip(multiplicands)
end

def pandigital_identity(n)
  combos(n).each do |pair|
    m1, m2 = pair
    m2.each do |m|
      return true if m1 * m == n
    end
  end
  false
end

def digits(num)
  num.to_s.chars.map { |x| x.to_i }
end

def to_num(digit_array)
  digit_array.map{ |x| x.to_s }.join.to_i
end

def all_digit_permutations(string)
  string.chars.permutation.to_a.flat_map { |array| array.join.to_i }
end

def find_all_pandigital_under(n)
  (1234..n).select {|x| pandigital_identity x }
end
find_all_pandigital_under(9876)

# [4396,
# 5346,
# 5796,
# 6952,
# 7254,
# 7632,
# 7852]

