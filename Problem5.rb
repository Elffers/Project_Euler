# Problem 5
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# n = 2
# while n < 20
# 	array = (2...n).to_a
# 	array.keep_if {|num| n % num != 0}
#   n = n + 1
# end

n = 20
array = (2...n).to_a.reverse
#Eliminates any factor of n from the array
array.reject {|num| n % num == 0}

# => [19, 18, 17, 16, 15, 14, 13, 12, 11, 9, 8, 7, 6, 3] 

#nested loop??

# Prime factorization is just

2 ** 4
3 ** 2
5
7
11
13
17
19

# => 232792560