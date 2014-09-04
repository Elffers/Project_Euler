# The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

# Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

# NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

require 'prime'

def truncatable?(prime)
  return false if prime.to_s.length == 1
  right_truncate(prime).all? {|x| x.prime? } && left_truncate(prime).all? {|x| x.prime? }
end

def right_truncate(num)
  array = [num]
  n = num.to_s.length - 1
  n.times do
    num = num.to_s.chop.to_i
    array.push num
  end
  array
end

def left_truncate(num)
  array = [num]
  n = num.to_s.length - 1
  n.times do
    num = num.to_s.slice(1..-1).to_i
    array.push num
  end
  array
end

def find_truncatable(n)
  Prime.each(n).select { |prime| truncatable?(prime) }
end

p find_truncatable(1000000)
 # => [23, 37, 53, 73, 313, 317, 373, 797, 3137, 3797, 739397]
# real  0m17.279s
# user  0m17.148s
# sys 0m0.055s

