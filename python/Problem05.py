# Problem 5
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def gcd(a, b):
  remainder = b
  other_number = a
  while b:
      a, remainder = b, a %
  return a

def lcm(a, b):
  return a * b // gcd(a, b)

def lcm_of_many(arg_array):
  return reduce(lcm, arg_array)

lcm_of_many(range(1,21))

