# A googol (10**100) is a massive number: one followed by one-hundred zeros; 100**100 is almost unimaginably large: one followed by two-hundred zeros. Despite their size, the sum of the digits in each number is only 1.
# 
# Considering natural numbers of the form, ab, where a, b  100, what is the maximum digital sum?
beginning_time = Time.now

class Integer
  def sumDigits
    self.to_s.split("").map{ |x| x.to_i}.reduce(:+)
  end
end

winSum = 0
temp = 0

99.downto(1) do |i|
  99.downto(1) do |j|
    temp = (i**j).sumDigits
    if temp > winSum
      winSum = temp
      # puts winSum
      # puts i
      # puts j
      puts
    end
  end
  temp=0
end

puts winSum

end_time = Time.now
puts
puts "Time elapsed #{(end_time - beginning_time)} seconds"

# Euler forum one-liners
# puts (1..100).inject([]){|x,a|(1..100).map{|b|(a**b).to_s.split(//).inject(0){|s,i|s+i.to_i}}+x}.max
