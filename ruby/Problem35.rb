# The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

# There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

# How many circular primes are there below one million?

def rotations(num)
  output = [num]
  digits = num.to_s.chars
  x = digits.count - 1
  x.times do
    first = digits.shift
    rotation = digits.push(first).join("").to_i
    output << rotation
  end
  output
end

def circular_prime?(num)
  rotations(num).all?{ |x| x.prime? }
end

# VERY SLOW for n = 1000000
# puts Benchmark.measure { find_all_circular_primes_below(1000000) }
#  45.780000   1.000000  46.780000 ( 48.009995)

def find_all_circular_primes_below(n)
  i = 0
  cp = []
  while i < n
    cp.push i if circular_prime?(i)
    i += 1
  end
  cp
end

# [2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, 97, 113, 131, 197, 199, 311, 337, 373, 719, 733, 919, 971, 991, 1193, 1931, 3119, 3779, 7793, 7937, 9311, 9377, 11939, 19391, 19937, 37199, 39119, 71993, 91193, 93719, 93911, 99371, 193939, 199933, 319993, 331999, 391939, 393919, 919393, 933199, 939193, 939391, 993319, 999331]