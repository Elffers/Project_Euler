# Problem 9
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

n = 1000
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
triples

match = triples.find_all do |triple|
  triple[0]**2 + triple[1]**2 == triple[2]**2
end

match[0]*match[1]*match[2]


