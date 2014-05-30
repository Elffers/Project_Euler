# A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

# A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

UPPER = 28123

# O(n)
def abundant?(x)
  factors(x).reduce(:+) > x
end

def factors(n)
  factors = [1]
  s = Math.sqrt(n).floor
  (2..s).each do |x|
    if n % x == 0 && n/x == x
      factors.push(x)
    elsif n % x == 0
      factors.push(x, n/x)
    end
  end
  factors
end

# O(n**2)
def abundant_sum?(n)
  a = 12
  b = n - a
  while a <= b
    if !(abundant?(a) && abundant?(b))
      a += 1
      b -= 1
    else
      p "THESE", [a, b]
      return true
    end
  end
  false
end

def greatest_non_abundant_under(x)
  output = []
  while x > 0
    if !abundant_sum?(x)
      output << x
      x -= 1
    else
      p x
      x -= 1
    end
  end
  output
end

 #<Benchmark::Tms:0x007fd4928d8e70 @label="", @real=185.574801, @cstime=0.0, @cutime=0.0, @stime=0.5900000000000001, @utime=183.41, @total=184.0>

greatest_non_abundant_under(UPPER).reduce(:+)
