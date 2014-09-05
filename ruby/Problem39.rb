# If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, there are exactly three solutions for p = 120.

# {20,48,52}, {24,45,51}, {30,40,50}

# For which value of p ≤ 1000, is the number of solutions maximised?

def generate_triples input
  input.map do |line|
    /(?<a>\d+)\s+(?<b>\d+)\s+(?<c>\d+)/ =~ line
    [a.to_i, b.to_i, c.to_i]
  end
end

# uses pythag.txt input file
input = ARGF.each_line
triples = generate_triples input

# Creates hash of perimeters with a counter as their values
perim = Hash.new 0
triples.each do |triple|
  sum = triple.reduce(:+)
  perim[sum] += 1
end

# Finds perimeter with highest count
max = perim.values.max
p "max", max
p "perim", perim.key(max)
