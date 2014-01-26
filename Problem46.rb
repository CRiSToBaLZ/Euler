# It was proposed by Christian Goldbach that every odd composite number can be written as the sum of a prime and twice a square.
# 
# 9 = 7 + 2*(1**2)
# 15 = 7 + 2*(2**2)
# 21 = 3 + 2*(3**2)
# 25 = 7 + 2*(3**2)
# 27 = 19 + 2*(2**2)
# 33 = 31 + 2*(1**2)
# 
# It turns out that the conjecture was false.
# 
# What is the smallest odd composite that cannot be written as the sum of a prime and twice a square?

beginning_time = Time.now


require 'prime'

class Integer
  def composite?
    3.upto Math.sqrt(self) do |divisor|
      if self%divisor == 0
        return true
        break
      end
    end
  end
  def goldbach?
    1.upto(self-1) do |j|
      if j.prime? == true
        if Math.sqrt((self-j)/2)%1 == 0
          return true
        end
      end
    end
  end
end


goldbach = "correct"
x = 3

until goldbach == "wrong"
  if x%2 != 0
    if x.composite? == true
      if x.goldbach? != true
          puts x
          goldbach = "wrong"
      end
    end
  end
  x+=1
end

end_time = Time.now
puts
puts "Time elapsed #{(end_time - beginning_time)} seconds"