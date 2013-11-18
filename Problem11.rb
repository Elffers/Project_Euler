# Problem 11
# What is the greatest product of four adjacent numbers in 
#the same direction (up, down, left, right, or diagonally) in the 20×20 grid?

horiz_products =[]
vert_products = []
diag_products = []

array = File.readlines("problem11grid.txt").map { |row| row.scan(/\w+/) }

#Creates array ("numbers") of array of numbers from grid
numbers = array.map do |row|
  row.map {|x| x.to_i}
end


