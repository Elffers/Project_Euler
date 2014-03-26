# Problem 3
# Find the largest prime factor of 600851475143

from math import *

n = 600851475143

def factor_of_n(x): return n % x == 0

# Only accounts for possible prime factors
def factors_of_n(x):
  return filter(factor_of_n, range(2, int(sqrt(x))))

# [71, 839, 1471, 6857, 59569, 104441, 486847]

def factor(factor, number):
  return number % factor == 0

def factors(x):
  factors = [
    i for i in range(2, x)
    if factor (i, x)
  ]
  return factors

def prime(x):
    return len(factors(x)) == 0

primes_of_n = filter(prime, factors_of_n(n))

max(primes_of_n)