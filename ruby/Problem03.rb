# Problem 3
# Find the largest prime factor of 600851475143

n = 600851475143

def factors(n)
  range = (2..Math.sqrt(n))
  range.select {|factor| n % factor == 0}
end

x = factors(n)

primes = x.select { |factor| factors(factor).empty?}

primes.max
