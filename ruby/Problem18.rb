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
    @lines = input.map { |line| line.chomp }.map { |nums| nums.split(/\s/).map { |x| x.to_i } }.reverse
  end

  def map_max(line, index)
    if index == 0
      return line
    end
    line.each_with_index.map do |num, i|
      a = @lines[index - 1][i]
      b = @lines[index - 1][i+1]
      max = [a, b].max
      max + num
    end
  end

  def max_path
    @lines.each_with_index do |line, i|
      line = map_max line, i
      @lines[i] = line
    end
    @lines.last
  end
end

if $0 == __FILE__
  p = Pathfinder.new(File.readlines('problem18.txt'))
  path = p.max_path
  puts path.reduce(:+)
  p = Pathfinder.new(File.readlines('big_triangle.txt'))
  path = p.max_path
  puts path.reduce(:+)
end

