# Distinct primes factors
# Problem 47
# 
# The first two consecutive numbers to have two distinct prime factors are:
# 
# 14 = 2 × 7
# 15 = 3 × 5
# 
# The first three consecutive numbers to have three distinct prime factors are:
# 
# 644 = 2² × 7 × 23
# 645 = 3 × 5 × 43
# 646 = 2 × 17 × 19.
# 
# Find the first four consecutive integers to have four distinct prime factors. What is the first of these numbers?

beginning_time = Time.now


class Integer
  require 'mathn'
  def fourPrime?
    if self.prime_division.length == 4
      if (self+1).prime_division.length == 4
        if (self+2).prime_division.length == 4
          if (self+3).prime_division.length == 4
            return true
          end
        end
      end
    end
  end
end


1.upto(1000000) do |i|
  if i.fourPrime? == true
    puts i
    break
  end
end

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)} seconds"