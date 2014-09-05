# The first two consecutive numbers to have two distinct prime factors are:
#
#   14 = 2 × 7
# 15 = 3 × 5
#
# The first three consecutive numbers to have three distinct prime factors are:
#
# 644 = 2² × 7 × 23
# 645 = 3 × 5 × 43
# 646 = 2 × 17 × 19.
#
# Find the first four consecutive integers to have four distinct prime factors. What is the first of these numbers?


require 'prime'
# This is messy bc it forced a guess of an upper limit.
# It takes each chunk of 4 numbers and maps them to the prime factorization,
# which takes the form [[prime, exp], [[prime, exp]...]
# It then checks if all four elements in the chunk have 4 elements and returns
# if true.

def find_distinct_primes
  num = 120
  (120..500000).each_cons(4) do |chunk|
    bool = chunk.map do |num|
      Prime.prime_division(num).count
    end
    if bool.all? { |x| x == 4 }
      return chunk
    end
  end
end
p find_distinct_primes

# real  0m14.689s
# user  0m14.621s
# sys 0m0.034s
