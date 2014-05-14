# By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

# 3
# 7 4
# 2 4 6
# 8 5 9 3

# That is, 3 + 7 + 4 + 9 = 23.

# Find the maximum total from top to bottom of the triangle below:

class Pathfinder
  attr_accessor :lines

  def initialize(input)
    @lines = input.map { |line| line.chomp }.map { |nums| nums.split(/\s/).map { |x| x.to_i } }
  end

  def next_max(max)
    # This does not work if the max value is repeated earlier in the array
    index = @lines.first.index(max)
    @lines.shift
    [@lines.first[index], @lines.first[index + 1]].max
  end

  def max_path
    l = @lines.length
    path = []
    n = 0
    max = @lines.first.max
    while n < l
      path << max
      p path
      max = next_max(max) unless @lines.count == 1
      n += 1
    end
    path
  end
end

p = Pathfinder.new(File.readlines('problem18.txt'))
path = p.max_path
puts path.reduce(:+)