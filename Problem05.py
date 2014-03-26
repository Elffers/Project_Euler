# Problem 5
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def gcd(a, b):
  while b:
      a, b = b, a % b
  return a

def lcm(a, b):
  return a * b // gcd(a, b)

def lcmm(arg_array):
  return reduce(lcm, arg_array)

lcmm(range(1,21))