# Problem 11
# What is the greatest product of four adjacent numbers in
# the same direction (up, down, left, right, or diagonally) in the 20×20 grid?

horiz_products =[]
vert_products = []
diag_products = []

array = File.readlines("problem11grid.txt").map { |row| row.scan(/\w+/) }

# Creates Array ("numbers") of Arrays containing Fixnums of numbers from grid
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

horiz_products.max
# => 48477312

transposed = numbers.transpose

transposed.each do |row|
  index = 0
  while index < 20
     product = row[index].to_i * row[index+1].to_i * row[index+2].to_i * row[index+3].to_i
     vert_products << product
     index += 1
  end
end

vert_products.max
# =>51267216

i = 0
j = 0
while i < 20
  product = numbers[i][0]*numbers[i+1][1]*numbers[i+2][2]*numbers[i+3][3]
  diag_products << product
  i += 1
end

#return an array of 4 numbers, starting with number at index i,j and going down and right
def forward_quad(numbers, i, j)
  [numbers[i][j], numbers[i+1][j+1],numbers[i+2][j+2], numbers[i+3][j+3]]
end


