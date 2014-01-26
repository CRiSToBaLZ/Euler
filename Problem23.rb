# A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
# 
# A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.
# 
# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.
# 
# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

beginning_time = Time.now

class Integer
  def abundant?
    d = []
    2.upto(Math.sqrt(self)) { |i|
      if self % i == 0
        d << i << (self / i)
      end
    }
    d = d.uniq << 1
    if d.reduce(:+) > self
      return true
    else
      return false
    end
    end
end

abun_array = []

12.upto(28123) do |i|
  if i.abundant?
    abun_array << i
  end
end


check = "unknown"
sumNoAbun = 0

1.upto(28123) do |i|
  if i.odd? == true or i < 100  #46 is highest even int in category
    abun_array.each { |j|
      if check == "unknown"
        ok = i-j
        if (ok) > 0
          # if abun_array.include?(ok) == true
          if(ok).abundant? == true
            check = "yesAbunSum"
          end
        end
      end
    }
    if check != "yesAbunSum"
      sumNoAbun+=i
      p i
    end
    check = "unknown"
  end
end



p sumNoAbun

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)} seconds"




# 1.upto(16-1) do |j|
#   if j.abundant? == true
#     if (16 - j).abundant? == true
#       p (16 - j)
#       p j
#     end
#   end
# end
# 
