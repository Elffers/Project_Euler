require 'prime'

@prime_generator = Prime.to_enum
@primes = [@prime_generator.next]

def odd_composites
  return enum_for __method__ unless block_given?

  9.upto Float::INFINITY do |i|
    next if i % 2 == 0
    next if Prime.prime? i

    yield i
  end
end

def fill_primes ceiling
  @primes << @prime_generator.next while @prime_generator.peek < ceiling
end

def goldbach? n
  fill_primes n if n > @primes.last

  @primes.reverse_each do |prime|
    double_square_part = n - prime

    square_part, remainder = double_square_part.divmod 2
    next unless remainder.zero?

    return true if Math.sqrt(square_part).floor ** 2 == square_part
  end

  false
end

v = odd_composites.find do |c|
  not goldbach?(c)
end

p v
