# Take the number 192 and multiply it by each of 1, 2, and 3:

# 192 × 1 = 192
# 192 × 2 = 384
# 192 × 3 = 576
# By concatenating each product we get the 1 to 9 pandigital, 192384576. We will call 192384576 the concatenated product of 192 and (1,2,3)

# The same can be achieved by starting with 9 and multiplying by 1, 2, 3, 4, and 5, giving the pandigital, 918273645, which is the concatenated product of 9 and (1,2,3,4,5).

# What is the largest 1 to 9 pandigital 9-digit number that can be formed as the concatenated product of an integer with (1,2, ... , n) where n > 1?

# keeps as string
def concat_product(num, n)
  (1..n).map { |x| (num * x).to_s }.join
end

def pandigital(num_string)
  num_string.chars.sort == %w[1 2 3 4 5 6 7 8 9]
end

# 1 < n < 5

# for n = 3, 100 <= num <= 333
# for n = 2, 5000 <= num <= 9999

def try_two
  (5000..9999).map do |n|
    concat_product(n, 2)
  end.select {|cp| pandigital cp }
end

