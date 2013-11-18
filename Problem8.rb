# Problem 8
# Find the greatest product of five consecutive digits in the 1000-digit number.

# Sets n as the number as a string
n = File.readlines("problem8_number.txt").map {|row| row = row.slice(0,50)}.join

#test value
# n = "73167176531330624919"

#Create array of products

index = 0
products = []

while index < n.length
	n.each_char do |char|
	 product = n[index].to_i * n[index+1].to_i * n[index+2].to_i * n[index+3].to_i * n[index+4].to_i
	 index = index + 1
	 products << product
	end
end
products.max

# # Creates array containing each digit (as string) as an element 
# array = []
# n.each_char {|x| array.push x}
# array

require Enumerable?
# # chunk??