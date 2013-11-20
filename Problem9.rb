# Problem 9
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

#n = 993
n = 20
range = (3..n)
triples = []
range.each do |a|
  ((a+1)..n).each do |b|
    c = n - (a+b)
    if c > b
      triples << [a, b, c]
    end
  end
end

###




