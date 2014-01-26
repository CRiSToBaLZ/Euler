# Lychrel numbers
# Problem 55
# 
# If we take 47, reverse and add, 47 + 74 = 121, which is palindromic.
# 
# Not all numbers produce palindromes so quickly. For example,
# 
# 349 + 943 = 1292,
# 1292 + 2921 = 4213
# 4213 + 3124 = 7337
# 
# That is, 349 took three iterations to arrive at a palindrome.
# 
# Although no one has proved it yet, it is thought that some numbers, like 196, never produce a palindrome. A number that never forms a palindrome through the reverse and add process is called a Lychrel number. Due to the theoretical nature of these numbers, and for the purpose of this problem, we shall assume that a number is Lychrel until proven otherwise. In addition you are given that for every number below ten-thousand, it will either (i) become a palindrome in less than fifty iterations, or, (ii) no one, with all the computing power that exists, has managed so far to map it to a palindrome. In fact, 10677 is the first number to be shown to require over fifty iterations before producing a palindrome: 4668731596684224866951378664 (53 iterations, 28-digits).
# 
# Surprisingly, there are palindromic numbers that are themselves Lychrel numbers; the first example is 4994.
# 
# How many Lychrel numbers are there below ten-thousand?
# 
# NOTE: Wording was modified slightly on 24 April 2007 to emphasise the theoretical nature of Lychrel numbers.

beginning_time = Time.now


class String
  def palindrome?
    self == self.reverse
  end
end

class Integer
  def lychrel?
    x = self
    count = 0
    y = 0
    while count < 50
      y = x + x.to_s.reverse.to_i
      if y.to_s.palindrome?
        return false
      else
        x = y
        count+=1
      end
    end
    return true
  end
end

lyCount = 0

1.upto(10000) do |i|
  if i.lychrel?
    lyCount += 1
  end
end

p lyCount   

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)} seconds"

# p 349.lychrel?
# p 196.lychrel? 
# p 10677.lychrel?


