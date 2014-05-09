# What is the first term in the Fibonacci sequence to contain 1000 digits?

def fibonacci
  x = 1
  y = 1
  fib_nums = [x,y]
  while fib_nums.last.to_s.size < 1000
    fib_nums << (x+y)
    y = fib_nums[-1]
    x = fib_nums[-2]
  end
  fib_nums
end

fibonacci.length