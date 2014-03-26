# Problem 2
# Find the sum of even Fibonacci numbers that do not exceed 1000000

fib1 = 1
fib2 = 1
fib_nums = [fib1,fib2]

while fib1 + fib2 < 4000000:
  fib_nums.append(fib1+fib2)
  fib2 = fib_nums[-1]
  fib1 = fib_nums[-2]

def even(x):
    return (x % 2) == 0

even_fibs = filter(even, fib_nums)
sum(even_fibs)

# even_fibs = [
#   x
#   for x in fib_nums
#   if x % 2 == 0
# ]

