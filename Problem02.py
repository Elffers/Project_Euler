# Problem 2
# Find the sum of even Fibonacci numbers that do not exceed 1000000

x = 1
y = 1
fib_nums = [x,y]

while x + y < 4000000:
  fib_nums.append(x+y)
  y = fib_nums[-1]
  x = fib_nums[-2]

def even(x): return x % 2 == 0
even_fibs = filter(even, fib_nums)
def add(x,y): return x+y
reduce(add, even_fibs)

