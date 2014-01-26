# Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:
# 
# 1634 = 14 + 64 + 34 + 44
# 8208 = 84 + 24 + 04 + 84
# 9474 = 94 + 44 + 74 + 44
# As 1 = 14 is not a sum it is not included.
# 
# The sum of these numbers is 1634 + 8208 + 9474 = 19316.
# 
# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

p 2.upto(999999).inject(0) { |grandSum,i| (i == i.to_s.split("").inject(0) { |sum,n| sum+=n.to_i**5}) ? grandSum+=i : grandSum}

# grandSum = 0
# 
# 2.upto(999999) do |i|
#   if i == i.to_s.split("").inject(0) { |sum, n| sum+=n.to_i**5 }
#     puts i
#     grandSum += i
#   end
# end
# 
# puts grandSum