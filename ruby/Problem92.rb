# A number chain is created by continuously adding the square of the digits in a number to form a new number until it has been seen before.

# For example,

# 44 → 32 → 13 → 10 → 1 → 1
# 85 → 89 → 145 → 42 → 20 → 4 → 16 → 37 → 58 → 89

# Therefore any chain that arrives at 1 or 89 will become stuck in an endless loop. What is most amazing is that EVERY starting number will eventually arrive at 1 or 89.

# How many starting numbers below ten million will arrive at 89?

def square_digits(num)
  digits = num.to_s.chars.map { |x| x.to_i }
  digits.map {|d| d ** 2}.reduce(:+)
end

def sequence(num)
  output = []
  while output.uniq.count == output.count
    output.push square_digits(num)
    num = output.last
  end
  output
end

def sequence_has_89(num)
  original = num
  output = []
  h = {}
  while output.uniq.count == output.count
    h[original] = output
    return h if output.include? 89
    output.push square_digits(num)
    num = output.last
  end
end

def sequence_has_1(num)
  original = num
  output = []
  h = {}
  while output.uniq.count == output.count
    h[original] = output
    return h if output.include? 1
    output.push square_digits(num)
    num = output.last
  end
end

def count_1(limit)
  (1..limit).map {|n| sequence_has_1(n) }
end

def count_89(limit)
  (1..limit).map {|n| sequence_has_89(n) }
end
