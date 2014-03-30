# Problem 4
# Find the largest palindrome made from the product of two 3-digit numbers.

num1 = (100..999).to_a.reverse
num2 = (100..999).to_a.reverse

products = []

num1.each do |num|
  num2.each_with_index do |item, index|
    products << num * item
  end
end

def is_palindrome(num)
  num.to_s == num.to_s.reverse
end

products.sort.reverse.find { |num| is_palindrome(num) }