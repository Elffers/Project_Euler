# Find the minimal path sum, in matrix.txt, a 31K text file containing a 80 by 80 matrix, from the top left to
# the bottom right by only moving right and down.

# Sanitize and format input into array of array of ints

raw_matrix = File.readlines("matrix_81.txt")
MATRIX = raw_matrix.map do |line|
  line.delete("\n")
  string = line.split(",")
  string.map { |num| num.to_i }
end

def choose_path(i, j)
  if i == 79 && j == 79
    return
  end
  if i == 79
    return MATRIX[i][j+1], i, j+1
  end
  if j == 79
    return MATRIX[i+1][j], i+1, j
  end
  right = MATRIX[i][j+1]
  down = MATRIX[i+1][j]
  right < down ? [right, i, j+1] : [down, i+1, j]
end

def find_path
  sum = MATRIX[0][0]
  i = 0
  j = 0
  while choose_path(i, j)
    path, i, j = choose_path(i, j)
    sum += path
    choose_path(i,j)
  end
  sum
end

p find_path

