# 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.
# 
# Find the sum of all numbers which are equal to the sum of the factorial of their digits.
# 
# Note: as 1! = 1 and 2! = 2 are not sums they are not included.

beginning_time = Time.now


class Integer
  def factorial
    1.upto(self).inject(:*) || 1
  end
  
  def factorialSum
    0.upto(self.to_s.length-1).inject(0) { |sum, i| sum+=self.to_s.split("")[i].to_i.factorial}
  end
end


# 99_999_999! has a seven-digit sum, so 9_999_999! is an
# upper bound for numbers which equal sum of factorial of digits 

# grandSum = 0
# 
# 3.upto(9_999_999) do |i|
#     if i == i.factorialSum
#       p i
#       grandSum+=i
#     end
# end
# 
# puts grandSum

3.upto(9_999_999).inject(0) { |grandSum, i| (i == i.factorialSum) ? grandSum+=i : grandSum}


end_time = Time.now
puts
puts "Time elapsed #{(end_time - beginning_time)} seconds"
  