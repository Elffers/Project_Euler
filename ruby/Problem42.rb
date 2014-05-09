# The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1); so the first ten triangle numbers are:

# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# By converting each letter in a word to a number corresponding to its alphabetical position and adding these values we form a word value. For example, the word value for SKY is 19 + 11 + 25 = 55 = t10. If the word value is a triangle number then we shall call the word a triangle word.

# Using words.txt (right click and 'Save Link/Target As...'), a 16K text file containing nearly two-thousand common English words, how many are triangle words?

WORDS = File.read('words.txt').split(",").map{|x| x.match(/[A-Z]+/).to_s}
LETTERS = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]

def value(letter)
  LETTERS.index(letter) + 1
end

def score(word)
  word.chars.map { |letter| value(letter) }.reduce(:+)
end

def triangle_word?(word)
  is_triangular(score(word))
end

def is_triangular(x)
  ((Math.sqrt(8 * x + 1) -1)/2)*10 % 10 == 0
end

def find_all_triangle_words
  WORDS.select {|word| triangle_word?(word)}
end