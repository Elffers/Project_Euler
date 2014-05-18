# The fraction 49/98 is a curious fraction, as an inexperienced mathematician in attempting to simplify it may incorrectly believe that 49/98 = 4/8, which is correct, is obtained by cancelling the 9s.

# We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

# There are exactly four non-trivial examples of this type of fraction, less than one in value, and containing two digits in the numerator and denominator.

# If the product of these four fractions is given in its lowest common terms, find the value of the denominator.
NUM = (10..98)
DENOM = (10..99)

# generate all 2 digit rational numbers < 1
require 'set'
# returns array of arrays of tuples
def generate
  NUM.flat_map do |num|
    DENOM.map do |denom|
      [num, denom] if num < denom
    end.compact
  end
end

def simplifiable?(tuple)
  num = digits tuple.first
  denom = digits tuple.last
  num.any? {|digit| denom.include? digit }
end

def common(tuple)
  num = digits tuple.first
  denom = digits tuple.last
  num.each do |d|
    return d if denom.include? d
  end
  nil
end

def simplify(tuple)
  c = common(tuple)
  num = digits tuple.first
  denom = digits tuple.last
  i = num.index(c)
  j = denom.index(c)
  num.delete_at(i)
  denom.delete_at(j)

  [num, denom].flatten
end

def digits(int)
  int.to_s.chars.map { |x| x.to_i }
end

def simplify_all
    generate.map do |tuple|
    if simplifiable? tuple
      simplify tuple
    else
      nil
    end
  end
end

def simplest_form(tuple)
  num, denom = tuple
  gcd = num.gcd denom
  return num/gcd, denom/gcd
end

def trivial(pair)
  pair.first % 10 == 0 &&  pair.last % 10 == 0
end

# should return tuples containing num and denom of the four rational numbers and their associated simplifed tuple
def find_curious
  z = generate.zip simplify_all
  z.reject! {|x| x.last == nil }
  z.select { |tuple| simplest_form(tuple.first) == simplest_form(tuple.last) && !trivial(tuple.first) }
end

p find_curious.map { |x| x.last }