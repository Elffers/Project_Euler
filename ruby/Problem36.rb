# The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.

# Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.

# (Please note that the palindromic number, in either base, may not include leading zeros.)

def toBinary(decimal)
  binary_string = ""
  while decimal > 0
    remainder = decimal % 2
    binary_string.concat(remainder.to_s)
    decimal = decimal / 2
  end
  binary_string.reverse
end

def palindrome?(num)
  num.to_s == num.to_s.reverse
end

def double_palindrome?(num)
  palindrome?(num) && palindrome?(toBinary(num))
end

def sum_all_double_palindromes_under(n)
  i = 0
  output = []
  while i < n
    output << i if double_palindrome?(i)
    i += 1
  end
  output.reduce(:+)
end
