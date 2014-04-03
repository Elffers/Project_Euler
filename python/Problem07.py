# Problem 7
# What is the 10 001st prime number?

def nth_prime(n):
    i = 2
    primes = []
    while(len(primes) < n):
       j = 2
       while(j <= (i/j)):
          if not(i%j): break
          j = j + 1
       if (j > i/j) : primes.append(i)
       i = i + 1
    return primes.pop()