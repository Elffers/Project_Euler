# Problem 3
# Find the largest prime factor of 600851475143

n = 600851475143

def factors(n)
  range = (2..Math.sqrt(n))
  range.select {|factor| n % factor == 0}
end

x = factors(n)
# [71, 839, 1471, 6857, 59569, 104441, 486847]

primes = x.select { |factor| factors(factor).empty?}

primes.max

# 6857
