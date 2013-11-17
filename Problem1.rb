# Problem 1
# Find the sum of all the multiples of 3 or 5 below 1000

n = 1000

multiples = (1...n).to_a.select do |num|
	num % 3 == 0 || num % 5  == 0
end

sum = 0
multiples.each {|num| sum += num}

sum
