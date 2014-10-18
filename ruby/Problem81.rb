# Find the minimal path sum, in matrix.txt, a 31K text file containing a 80 by 80 matrix, from the top left to
# the bottom right by only moving right and down.

class Pathfinder
  attr_accessor :lines
# Sanitize and format input into array of array of ints

  def initialize(input)
    @lines = input.map { |line| line.chomp }.map { |nums| nums.split(",").map { |x| x.to_i } }
  end

  def min_path
    i = lines.length - 1
    j = lines.first.length - 2
    # calculate bottom values
    while j >= 0
      @lines[i][j] += @lines[i][j+1]
      j -= 1
    end
    #  calculate right values
    i = lines.length - 2
    j = lines.first.length - 1
    # set the values in @lines
    while i >= 0
      @lines[i][j] += @lines[i + 1][j]
      i -= 1
    end
    # sets the other values in @lines
    i = lines.length - 2
    while i >= 0
      j = lines.length - 2
      while j >= 0
        down = @lines[i+1][j]
        right = @lines[i][j+1]
        @lines[i][j] += [down, right].min
        j -= 1
      end
      i -= 1
    end
    @lines.first.first
  end
end

if $0 === __FILE__
  input = File.readlines "matrix81.txt"
  pathfinder = Pathfinder.new input
  p pathfinder.min_path
end
