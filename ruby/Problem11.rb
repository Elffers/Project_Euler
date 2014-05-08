# Problem 11
# What is the greatest product of four adjacent numbers in
# the same direction (up, down, left, right, or diagonally) in the 20×20 grid?
class MaxProduct

  def parse
    array = File.readlines("problem11grid.txt").map { |row| row.scan(/\w+/) }
    array.map do |row|
      row.map {|x| x.to_i }
    end
  end

  def quad_product(array)
    array.reduce(:*)
  end

  # Expects array of arrays
  def find_max(array)
    max = 0
    array.each do |subarray|
      subarray.each_cons(4) do |chunk|
        product = quad_product(chunk)
        max = product if product > max
      end
    end
    max
  end

  def horizontal_max
    # => 48477312
    find_max(parse)
  end

  def vertical_max
    # =>51267216
    find_max(parse.transpose)
  end

  def diagonal_max_right
    find_max(shift_right.transpose)
  end
  # 70600674

  def diagonal_max_left
    find_max(shift_left.transpose)
  end
  # 32565456
  def shift_left
    shifted = []
    parse.each_with_index do |x, i|
      x.shift(i)
      i.times { x.push(0) }
      shifted.push(x)
    end
    shifted
  end

  def shift_right
    shifted = []
    parse.each_with_index do |x, i|
      x.pop(i)
      i.times { x.unshift(0) }
      shifted.push(x)
    end
    shifted
  end
end
