# Problem 10
#Find the sum of all the primes below two million.

# From Problem 7
# Returns Array containing all primes below n
# Tooo slow for large values of n

n = 2000000
primes = (2..n).to_a.select do |x|
  (2..Math.sqrt(x)).to_a.select {|i| x % i == 0} == []
end

n   = 10
sum = 0
primes = (2..n).to_a.select do |x|
  if (2..Math.sqrt(x)).to_a.select {|i| x % i == 0} == []
  	sum += x
  end
end

sum