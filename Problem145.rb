# How many reversible numbers are there below one-billion?
# Problem 145
# 
# Some positive integers n have the property that the sum [ n + reverse(n) ] consists entirely of odd (decimal) digits. For instance, 36 + 63 = 99 and 409 + 904 = 1313. We will call such numbers reversible; so 36, 63, 409, and 904 are reversible. Leading zeroes are not allowed in either n or reverse(n).
# 
# There are 120 reversible numbers below one-thousand.
# 
# How many reversible numbers are there below one-billion (109)?

beginning_time = Time.now

class Integer
  def reversible?
    return false if self.to_s[-1].to_i == 0
    sum = (self + self.to_s.reverse!.to_i).to_s
    0.upto(sum.length-1) do |i|
      if sum[i].to_i % 2 == 0
        return false
      end
    end
    return true
  end
end

count = 0

0.upto(99_999_999) do |i|
  if i.reversible?
    count+=1
    p i
  end
end

p count

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)} seconds"