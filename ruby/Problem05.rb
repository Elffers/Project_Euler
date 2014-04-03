# Problem 5
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require 'prime'

def find_lcm(n)
  x = 2
  lcm = 2
  while x <= n
    lcm = lcm.lcm(x+1)
    x += 1
    # puts lcm
  end
  lcm
end

find_lcm(20)


