# By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

# 3
# 7 4
# 2 4 6
# 8 5 9 3

# That is, 3 + 7 + 4 + 9 = 23.

# Find the maximum total from top to bottom of the triangle below:
# dynamic programming

class Pathfinder
  attr_accessor :lines

  def initialize(input)
    @lines = input.map { |line| line.chomp }.map { |nums| nums.split(/\s/).map { |x| x.to_i } }
  end

  # shift needs to happen before this is called
  def next_max(max, index)
    max = [@lines.first[index], @lines.first[index + 1]].max
    index = index + 1 if @lines.first[index + 1] == max
    return max, index
  end

  def max_path
    l = @lines.length
    max = @lines.first.max
    index = @lines.first.index(max)
    path = []
    l.times do
      path << max
      p path
      @lines.shift
      max, index = next_max(max, index) unless @lines.count == 0
    end
    path
  end
end

p = Pathfinder.new(File.readlines('problem18.txt'))
path = p.max_path
puts path.reduce(:+)

p = Pathfinder.new(File.readlines('big_triangle.txt'))
path = p.max_path
puts path.reduce(:+)
