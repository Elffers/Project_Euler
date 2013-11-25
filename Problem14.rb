# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?


def chain(x)
  array = [x]
  while array.last != 1
    if array.last.even?
      x = x/2
      array << x
    elsif array.last.odd?
      x = 3*x + 1
      array << x
    end
  end
  array.count
end


n = 1000000

chains = (1..n).map do |x|
  chain(x)
end

chains.index(chains.max) + 1
