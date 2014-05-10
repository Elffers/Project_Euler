NONLEAP_DISPLACEMENT = [3, 0, 3, 2, 3, 2, 3, 3, 2, 3, 2, 3]

LEAP_DISPLACEMENT = [3, 1, 3, 2, 3, 2, 3, 3, 2, 3, 2, 3]

def leap?(year)
  year % 100 != 0 && year % 4 == 0 || year % 400 == 0
end

def map_leap_years(debut, fin)
  (debut..fin).map do |year|
    if leap? year
      year
    else
      0
    end
  end
end

def first_days(year, first_day=1)
  first_days = []
  if leap? year
    displacement = LEAP_DISPLACEMENT
  else
    displacement = NONLEAP_DISPLACEMENT
  end
  displacement.each do |off|
    first_days.push first_day
    first_day = (first_day + off) % 7
  end
  return first_day, first_days
end

def sundays(year)
  first_days(year).count(0)
end

def all_first_days(debut, fin)
  output = []
  first_day = 1
  (debut..fin).map do |year|
    first_day, days = first_days(year, first_day)
    output << days
  end
  output
end

p all_first_days(1901, 1903)