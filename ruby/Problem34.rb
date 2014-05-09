# 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

# Find the sum of all numbers which are equal to the sum of the factorial of their digits.

# Note: as 1! = 1 and 2! = 2 are not sums they are not included.

def factorial(n)
  if n == 1 || n == 0
    1
  else
    n * factorial(n-1)
  end
end

def sum_of_factorials(n)
  digits = n.to_s.chars.map { |x| x.to_i }
  digits.map {|x| factorial(x) }.reduce(:+)
end

def curious_number?(n)
  n == sum_of_factorials(n)
end

def find_all_curiosities_under(n)
  (1..n).select {|x| curious_number?(x) }
end

# 40730