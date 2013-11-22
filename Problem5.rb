# Problem 5
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

n = 20
array = (2...n).to_a.reverse
#Eliminates any factor of n from the array
array.reject {|num| n % num == 0}
# => [19, 18, 17, 16, 15, 14, 13, 12, 11, 9, 8, 7, 6, 3] 

array = (2..n).to_a.reverse
factors = []
while array.length > 1
  a, *b = *array
  b.delete_if {|x| a % x == 0}
  factors << a
  array = b
  puts b.inspect
end





# Returns array containing prime factors given n
def factor(n)
  array = []
  i = 2
  while i <= n
    while n % i == 0
      array << i
      n = n/i
    end
   i += 1
  end
  array
end



2 ** 4
3 ** 2
5
7
11
13
17
19

20, 19, 
