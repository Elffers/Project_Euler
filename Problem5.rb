# Problem 5
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


#Eliminates any factor of n from the array
array.reject {|num| n % num == 0}
# => [19, 18, 17, 16, 15, 14, 13, 12, 11, 9, 8, 7, 6, 3] 

array = (2..n).to_a.reverse
# factors = []
# while array.length > 1
#   a, *b = *array
#   b.delete_if {|x| a % x == 0}
#   factors << a
#   array = b
#   puts b.inspect
# end

# Returns array containing prime factors given n
def factor(n)
  hash = {}
  i = 2
  while i <= n
    hash[i] = 0
    while n % i == 0
      hash[i] += 1
      n = n/i
    end
   i += 1
  end
  hash.delete_if{|k,v| v == 0}
end

n = 20
array = (2...n).to_a.reverse

factors = array.map {|x| factor(x)}
#=> [{2=>2, 5=>1}, {19=>1}, {2=>1, 3=>2}, {17=>1}, {2=>4}, {3=>1, 5=>1}, {2=>1, 7=>1}, {13=>1}, {2=>2, 3=>1}, {11=>1}, {2=>1, 5=>1}, {3=>2}, {2=>3}, {7=>1}, {2=>1, 3=>1}, {5=>1}, {2=>2}, {3=>1}, {2=>1}] 

# Returns has with unique key values 
#primefact = factors.inject {|x, hash| hash.merge(x)}


prime_hash = {}
factors.flatten.uniq.each do |x|
  prime_hash[x] = 0
end





#=> [[2, 2, 5], [19], [2, 3, 3], [17], [2, 2, 2, 2], [3, 5], [2, 7], [13], 
#   [2, 2, 3], [11], [2, 5], [3, 3], [2, 2, 2], [7], [2, 3], [5], [2, 2], [3], [2]] 


2 ** 4
3 ** 2
5
7
11
13
17
19

