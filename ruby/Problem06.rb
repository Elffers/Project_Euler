# Problem 6
# Find the difference between the sum of the squares of the first one hundred natural numbers
# and the square of the sum.

n = 100

#finds sum of squares of all numbers in range
squares = (1..n).map {|x| x**2}
sum_of_squares = squares.reduce(:+)

sum = (1..n).reduce(:+)

(sum**2) - sum_of_squares