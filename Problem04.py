# Problem 4
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome(x):
  return str(x) == str(x)[::-1]

a = 999
palindromes = []
while a >= 100:
  b = 999
  while b >= 100:
    if palindrome(a * b):
      palindromes.append(a * b)
    b -= 1
  a -= 1

max(palindromes)

max(
   a*b
   for a in range(100, 999)
   for b in range(100, 999)
   if palindrome(a*b)
)