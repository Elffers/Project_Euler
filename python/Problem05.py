# Problem 5
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def gcd(a, b):
    """Calculate the Greatest Common Divisor of a and b.

    Unless b==0, the result will have the same sign as b (so that when
    b is divided by it, the result comes out positive).
    """
    while b:
        a, b = b, a%b
    return a

def lcm(a, b):
  return a * b // gcd(a, b)

def lcm_of_many(arg_array):
  return reduce(lcm, arg_array)

lcm_of_many(range(1,21))

