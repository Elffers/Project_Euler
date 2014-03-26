# Problem 2
# Find the sum of even Fibonacci numbers that do not exceed 1000000

x = 1
y = 1
fib_nums = [x,y]

while (x+y) < 4000000
  fib_nums << (x+y)
  y = fib_nums[-1]
  x = fib_nums[-2]
end

sum = 0
fib_nums.each do |num| 
  if num % 2 == 0 
    sum += num
  end
end

sum

