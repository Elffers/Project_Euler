# Problem 9
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

n = 997

range = (3..993)

products = range.map do |a|
  range.map do |b|
    b**2 + a **2
  end
end

c_squared = products.flatten.find_all do |c|
  (Math.sqrt(c)*10 % 10) == 0
end



# Iterate through a range and add the square of each number with squre of another (iterated)
# Check if sum is a perfect square
# If true, add the three numbers
# if sum = 1000, return product of three numbers

c = a ** 2 + b ** 2

Math.sqrt(c).is_a? Fixnum


