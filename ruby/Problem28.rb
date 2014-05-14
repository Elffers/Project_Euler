# Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:

# 21 22 23 24 25
# 20  7  8  9 10
# 19  6  1  2 11
# 18  5  4  3 12
# 17 16 15 14 13

# It can be verified that the sum of the numbers on the diagonals is 101.

# What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?

def corners(start, n)
  fourth = start + (n * 4 - 4)
  diff = n - 1
  third = fourth - diff
  second = third - diff
  first = second - diff
  return [first, second, third, fourth]
end

def find_corners(x)
  diagonals = [1]
  (3..x).step(2).to_a.each do |n|
    start = diagonals.last
    diagonals.concat corners(start, n)
    p diagonals
  end
  diagonals
end