# Problem 6
# Find the difference between the sum of the squares of the first one hundred natural numbers 
# and the square of the sum.

n = 100
sum_of_squares = 0

#finds sum of squares of all numbers in range
(1..n).each {|x| sum_of_squares += x**2}
sum_of_squares

# finds sum of all numbers in range
sum = 0
(1..n).each {|x| sum += x}
sum ** 2

sum**2 - sum_of_squares