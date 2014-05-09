# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
class Counter
  UNITS = %w[one two three four five six seven eight nine]
  TEENS = %w[ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]
  TENS = %w[twenty thirty forty fifty sixty seventy eighty ninety]
  HUNDRED = %w[hundred]
  THOUSAND = %w[thousand]



  class Number
    def initialize(num)
      @num = num
      @digits = @num.to_s.chars.map { |x| x.to_i }
      @size = @digits.count
    end

    def one_digit(digit)
      UNITS[digit - 1]
    end

    def two_digit(digits)
      if digits.first == 1
        TEENS[digits.last]
      elsif digits.last == 0
        TENS[digits.first - 2]
      else
        TENS[digits.first - 2] + UNITS[digits.last - 1]
      end
    end

    def three_digit(digits)
      if digits[1] == 0 && digits[2] == 0
        UNITS[digits.first - 1] + HUNDRED[0]
      elsif digits[1] == 0
        UNITS[digits.first - 1] + HUNDRED[0] + "and" + one_digit(digits.last)
      else
        UNITS[digits.first - 1] + HUNDRED[0] + "and" + two_digit(digits[1,2])
      end
    end

    def convert
      if @size == 1
        one_digit(@num)
      elsif @size == 2
        two_digit(@digits)
      elsif @size == 3
        three_digit(@digits)
      end
    end

    def count
      convert.size
    end
  end

end
