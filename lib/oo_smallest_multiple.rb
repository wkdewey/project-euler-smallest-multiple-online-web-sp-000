# Implement your object-oriented solution here!
class SmallestMultiple
  @@primes = [2, 3]
  def initialize(number)
    @number = number
    @prime_factors = []
  end

  def self.is_prime?(number)
    prime = true
    if !(@@primes.include?(number))
      squareRoot = Math.sqrt(number).floor
      for i in 2..squareRoot
        if ((number % i) == 0) && is_prime?(i)
          prime = false
        end
      end
    end
    if prime == true && !(@@primes.include?(number))
      @@primes << number
    end
    prime
  end

  def lcm
    (2..@number).each do |i|
      if self.class.is_prime?(i)
        @prime_factors << i
      end
    end
    result = 1
    puts(@prime_factors)
    @prime_factors.each do |factor|
      result *= factor
      puts result
    end
    result
  end

end