beginning_time = Time.now

## this attempted function doesn't work in loops, says undefined method map
# require 'prime'
# def divisors_of(number)
#   primes, powers = number.prime_division.transpose
#   exponents = powers.map{|i| (0..i).to_a}
#   divisors = exponents.shift.product(*exponents).map do |powers|
#     primes.zip(powers).map{|prime,power| prime ** power}.inject(:*)
#   end
#   divisors.sort.map{|div| div}-[number]
# end

# # This was too slow too
# class Integer
#   def factors() 
#     (1..self/2).select{|n|(self%n).zero?}
#   end
# end


class Integer
  def factors
     d = []
     2.upto(Math.sqrt(self)) { |i|
       if self % i == 0
         d << i << (self / i)
       end
     }
     d << 1 #this is not uniq
   end
 end


# p 284.factors.reduce(:+)


dA = 0
dB = 0
sumAmicable = 0

1.upto(10000) do |a|
  dA = a.factors.reduce(:+)
  if dA > a
    a+1.upto(10000) do |b|
      dB = b.factors.reduce(:+)
      if dB == a
        if dA ==b
          if a!=b
            sumAmicable+=dA+dB
            puts a.to_s + " is amicable with " + b.to_s
          end
        end
      end
    end
  end
end

puts sumAmicable

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)} seconds"
