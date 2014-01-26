# Consecutive positive divisors
# Problem 179
# 
# Find the number of integers 1 < n < 10**7, for which n and n + 1 have the same number of positive divisors. For example, 14 has the positive divisors 1, 2, 7, 14 while 15 has 1, 3, 5, 15.

beginning_time = Time.now

class Integer
  def divisors
     d = []
     2.upto(Math.sqrt(self)) { |i|
       if self % i == 0
         d << i << (self / i)
       end
     }
     (d << 1 << self).uniq.length
   end
 end
 
 count = 0 
  
2.upto(10**7-1) do |i|
   if i.divisors == (i+1).divisors
     count +=1
     puts i.to_s + " " + (i+1).to_s
   end
end

 p count
 
 end_time = Time.now

 puts "Time elapsed #{(end_time - beginning_time)} seconds"
 
 # # 96s answer?
 # limit,answer=10**7,0
 # a=[1]*(limit+1)
 # (2..limit).each{|n| (n..limit).step(n){|x| a[x]+=1}}
 # (2..limit).each{|n| answer+= a[n]==a[n-1] ? 1 : 0}
 # puts "Answer to PE 179: " + answer.to_s