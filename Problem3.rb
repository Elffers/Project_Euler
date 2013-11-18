# Problem 3
# Find the largest prime factor of 600851475143

n = 600851475143
# Returns array of factors of n
range = (2..Math.sqrt(n))
factors = range.select {|factor| n % factor == 0}
# [71, 839, 1471, 6857, 59569, 104441, 486847] 

# Returns array "factors" containing only the prime numbers from the array "factors"
factors.keep_if do |factor|
  (2..Math.sqrt(factor)).select {|x| factor % x == 0} == []
end

# Finds max of prime factors of n

factors.max

