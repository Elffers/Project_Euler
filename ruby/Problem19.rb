# You are given the following information, but you may prefer to do some research for yourself.

# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

DAYS = %w[Sunday Monday Tuesday Wednesday Thursday Friday Saturday]
LONG = %w[January March May July August October December]
SHORT = %w[April June September November]
MONTHS = %w[January February March April May June July August September October November December]
NONLEAP_DISPLACEMENT = [3, 0, 3, 2, 3, 2, 3, 3, 2, 3, 2, 3]

LEAP_DISPLACEMENT = [3, 1, 3, 2, 3, 2, 3, 3, 2, 3, 2, 3]

# MONTHS.map do |month|
#   if LONG.include? month
#     31 % 7
#   elsif SHORT.include? month
#     30 % 7
#   else
#     29 % 7
#   end
# end

class Year

  def initialize(year)
    @current = year
  end

  def days_in
    leap? ? 366:365
  end

  def leap?
    @current % 100 != 0 && @current % 4 == 0 || @current % 400 == 0
  end

  def first_days
    if leap?

    end

  end

  class Month

    def initialize(month)
      @current = month
    end

    def days(year)
      if LONG.include? @current
        31
      elsif SHORT.include? @current
        30
      elsif @current == "February"
        year = Year.new year
        if year.leap?
          29
        else
          28
        end
      end
    end
  end
end

