# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

def d(n)
  divisors(n).reduce(:+)
end

def divisors(x)
  (2..x/2).select do |factor|
    x % factor == 0
  end.push(1)
end

def find_amicable_under(n)
  i = 0
  friends = []
  while i < n
    friends << i if amicable?(i)
    i += 1
  end
  p friends
  friends.reduce(:+)
end

def amicable?(n)
  a = d(n)
  d(a) == n && a !=n
end