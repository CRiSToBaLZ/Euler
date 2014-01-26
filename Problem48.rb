# The series, 11 + 22 + 33 + ... + 1010 = 10405071317.
# 
# Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.

# sum = 0
# 
# 1.upto(1000) do |i|
#   sum += i**i
# end
# 
# puts sum.to_s.split("").last(10).join.to_i

(1.upto(1000).inject(0){ |sum,i| sum+=i**i}).to_s.split("").last(10).join.to_i