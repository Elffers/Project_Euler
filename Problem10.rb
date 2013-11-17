# Problem 10
#Find the sum of all the primes below two million.

# From Problem 7
# Returns Array containing all primes below n
# Slow for large values of n
n = 200
primes = (2..n).to_a.delete_if do |x|
  (2..Math.sqrt(x)).to_a.select {|i| x % i == 0} != []
end