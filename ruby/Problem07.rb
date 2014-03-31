# Problem 7
# What is the 10 001st prime number?

n = 200000

# Succeeds in returning array of primes, but slow for large values of n
primes = (2..n).to_a.delete_if do |x|
  (2..Math.sqrt(x)).select {|i| x % i == 0} != []
end

#Returns the 10,001st element in the array primes

primes[10000]
