# It can be seen that the number, 125874, and its double, 251748, contain exactly the same digits, but in a different order.
# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.


def foo max
  (1..max).each do |num|
    a = [num, 2*num, 3*num, 4*num, 5*num, 6*num]
    b = a.map {|num| check_digits num }
    return num if b.all? {|x| x == b[0]}
  end
end

def check_digits num
  num.to_s.chars.sort
end


p foo 1000000
