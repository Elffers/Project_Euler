# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

# What is the total of all the name scores in the file?

NAMES = File.read('names.txt').split(",").map{|x| x.match(/[A-Z]+/).to_s}.sort
LETTERS = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]

def score(name)
  name.chars.map { |letter| value(letter) }.reduce(:+)
end

def value(letter)
  LETTERS.index(letter) + 1
end

def score_all
  NAMES.map { |name| score(name) * (NAMES.index(name) + 1) }.reduce(:+)
end

