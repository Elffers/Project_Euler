# The series, 11 + 22 + 33 + ... + 1010 = 10405071317.

# Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.

def self_powers(n)
  (1..n).map {|x| x ** x }
end

puts self_powers(1000).reduce(:+).to_s.slice(-10..-1)