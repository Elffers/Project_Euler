# Problem 6
# Find the difference between the sum of the squares of the first one hundred natural numbers
# and the square of the sum.

cento = range(1, 101)
def square(x): return x * x

def sum_of_squares(args):
  squares = map(square, args)
  return sum(squares)

square(sum(cento)) - sum_of_squares(cento)