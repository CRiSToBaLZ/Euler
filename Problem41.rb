# Pandigital Prime
# 
# We shall say that an n-number is pandigital if it makes use of all the digits
# 1 to n exactly once.  For example, 2143 is a 4-digit pandigital and is also prime.
# 
# What is the largest n-digit pandigital prime that exists?

beginning_time = Time.now


class Integer
  def pandigital?
    array = []
    (1..self.to_s.length).each do |a|
      array << a
    end
    if self.to_s.split("").sort.join == array.join
      return true
    else
      return false
    end
  end
end


require 'prime'

1000000000.downto(100000000) do |i|
  if i%2 != 0
    if i.to_s[0].to_i <= i.to_s.length
      if i.to_s[-1].to_i == 1 or i.to_s[-1].to_i == 3 or i.to_s[-1].to_i == 7
        if i.pandigital? == true and i.prime? == true
          puts i
        end
      end
    end
  end
end

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)} seconds"

# current winner 7652413
