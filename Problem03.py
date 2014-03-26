# Problem 3
# Find the largest prime factor of 600851475143

from math import *

n = 600851475143
def factor(x): return n % x == 0
factors = filter(factor,range(2..Math.sqrt(n))

# [71, 839, 1471, 6857, 59569, 104441, 486847]

factors.keep_if do |factor|
  (2..Math.sqrt(factor)).select {|x| factor % x == 0} == []
end

# Finds max of prime factors of n

factors.max



