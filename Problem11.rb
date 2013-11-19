# Problem 11
# What is the greatest product of four adjacent numbers in 
#the same direction (up, down, left, right, or diagonally) in the 20×20 grid?

horiz_products =[]
vert_products = []
diag_products = []

array = File.readlines("problem11grid.txt").map { |row| row.scan(/\w+/) }

#Creates Array ("numbers") of Arrays containing Fixnums of numbers from grid
numbers = array.map do |row|
  row.map {|x| x.to_i}
end

# Generates products of products taken horizontally, puts them into horiz_products
numbers.each do |row|
  index = 0
  while index < 20
     product = row[index].to_i * row[index+1].to_i * row[index+2].to_i * row[index+3].to_i
     horiz_products << product
     index += 1
  end
end

# horiz_products.max
# => 48477312 

column = 0
row = 0
while row < 20
product = numbers[column]

