# Problem 16
# 2**15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2**1000?

n = 2 ** 1000

#Converts n to a string and puts each digit (as a string) into an array
a = n.to_s.scan(/\d/)

#maps each digit back to integer

d = a.map {|x| x.to_i}

d.inject(:+)

=>1366

