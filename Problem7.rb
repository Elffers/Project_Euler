# Problem 7
# What is the 10 001st prime number?

##Python code for finding prime numbers

# i = 2
# while(i < 100):
#    j = 2
#    while(j <= (i/j)):
#       if not(i%j): break
#       j = j + 1
#    if (j > i/j) : print i, " is prime"
#    i = i + 1

n = 20000

# works to find primes, but slow for large values of n
primes = (2..n).to_a.delete_if do |x|
  (2..Math.sqrt(x)).to_a.select {|i| x % i == 0} != []
end

primes[10000]