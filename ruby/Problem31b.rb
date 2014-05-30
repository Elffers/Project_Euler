# In England the currency is made up of pound, £, and pence, p, and there
# are eight coins in general circulation:

# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
# It is possible to make £2 in the following way:

# 1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
# How many different ways can £2 be made using any number of coins?

def remainder(coin, value)
  value % coin
end

def change_with(coin, value)
  max = value/coin
  ways = (1..max).to_a
  #returns [] if coin is bigger than @value
  ways.map do |way|
    remainder = value - coin * way
    [way, remainder]
  end
end