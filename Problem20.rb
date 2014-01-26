# n! means n  (n  1)  ...  3  2  1
# 
# For example, 10! = 10  9  ...  3  2  1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
# 
# Find the sum of the digits in the number 100!
# 

# production = 1
# starter = 100
# 
# starter.downto(1) do |i|
#   production*=i
# end
# 
# 
# 
# prodstr = production.to_s
# 
# sum = 0
# movenum = 0
# 
# while movenum < prodstr.length-1
#   sum += prodstr[movenum].to_i
#   movenum +=1
# end
# 
# puts sum


#fast Ruby way to do above
puts production = 100.downto(1).reduce(:*).to_s.chars.map(&:to_i).reduce(:+)