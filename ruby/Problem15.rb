# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

# How many such routes are there through a 20×20 grid?

def n_C_r(n,r)
  factorial(n)/( factorial(r) * factorial(n - r))
end

def factorial(n)
  if n == 1 || n == 0
    1
  else
    n * factorial(n-1)
  end
end

n_C_r(40, 20)