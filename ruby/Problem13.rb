# Problem 13
# Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.


#Returns Array of each line 
file = File.readlines("Problem13.txt").map {|num| num = num.strip.to_i}

bigsum = file.inject{|sum, num| sum+num}

bigsum.to_s.slice(0,10)