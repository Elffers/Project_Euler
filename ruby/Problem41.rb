# We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is also prime.

# What is the largest n-digit pandigital prime that exists?

# generate array of n-digit pandigital
def pandigitals(n)
  (1..n).map {|x| x.to_s}.permutation.to_a.map {|y| y.join.to_i}.select {|num| maybe_prime num }
end

# all permutations ending in an even number can be eliminated
# all permutations ending with 5 can be eliminated

def maybe_prime(num)
  last = num.to_s[-1].to_i
  sum = num.to_s.chars.map {|x| x.to_i}.reduce(:+)
  if last == 5 || last.even? || sum % 3 == 0
    false
  else
    true
  end
end

# 8- and 9-digit pandigitals will never be prime

pandigitals(7).select {|x| x.prime? }.max