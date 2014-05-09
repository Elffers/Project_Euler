# Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

# 1634 = 14 + 64 + 34 + 44
# 8208 = 84 + 24 + 04 + 84
# 9474 = 94 + 44 + 74 + 44
# As 1 = 14 is not a sum it is not included.

# The sum of these numbers is 1634 + 8208 + 9474 = 19316.

# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

class HNumber
  attr_accessor :num

  def initialize(num)
    @num = num
  end

  def sum_of_digits_to(n)
    digits = @num.to_s.chars.map { |x| x.to_i }
    digits.map {|x| x ** n }.reduce(:+)
  end

  def cool_to_the(n)
    sum_of_digits_to(n) == self.num
  end
end

# upper bound = 5 * (9 ** 5) = 295245

def find_all_cool_under(n)
  nums = (1..n).to_a.map { |x| HNumber.new x }
  nums.select { |p| p.cool_to_the(5) }
end

# [4150, 4151, 54748, 92727, 93084, 194979]