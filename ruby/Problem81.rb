# Find the minimal path sum, in matrix.txt, a 31K text file containing a 80 by 80 matrix, from the top left to
# the bottom right by only moving right and down.

class Pathfinder
  attr_accessor :lines
# Sanitize and format input into array of array of ints

  def initialize(input)
    @lines = input.map { |line| line.chomp }.map { |nums| nums.split(",").map { |x| x.to_i } }
  end

  def min_path(i, j)
    if i == 0 && j == 0
      return [@lines[i][j], -1 ,-1]
    end
    sum = @lines[i][j]
    up = @lines[i-1][j]
    left = @lines[i][j-1]
    output = sum + up < sum + left ? [sum + up,i-1, j] : [sum + left, i, j-1]
    @lines[output[1]][output[2]] = output[0]
    output
  end

  def find_path
    sums =# intialize grid 
    i = lines.length - 1
    j = lines.length - 1
    current = @lines[i][j]
    while i >= 0 && j >= 0
      current, i, j = min_path i,j
      p current
    end
    current
  end
end

if $0 === __FILE__
  input = File.readlines "matrix81.txt"
  pathfinder = Pathfinder.new input
  pathfinder.lines.each {|x| p x }
  p pathfinder.find_path
end

#should be 427337, getting 491866 
