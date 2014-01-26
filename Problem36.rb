# The decimal number, 585 = 1001001001 2(binary), is palindromic in both bases.
# 
# Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.
# 
# (Please note that the palindromic number, in either base, may not include leading zeros.)

# sum = 0
# 
# 1.upto(1000000) do |i|
#   if i.to_s == i.to_s.reverse && i.to_s(2) == i.to_s(2).reverse
#       puts i.to_s + " " + i.to_s(2)
#       sum+=i
#   end
# end
# 
# puts
# puts sum

# p 1.upto(1000000).inject(0) { |sum, i| (i.to_s == i.to_s.reverse && i.to_s(2) == i.to_s(2).reverse)? sum += i : sum}

p 1.upto(1000000).inject(0) { |sum, i| (i.to_s == i.to_s.reverse && i.to_s(2) == i.to_s(2).reverse) ? sum += i : sum}


# p 1.upto(1000).to_a.reduce(0) { |sum, i| i.to_s == (i.to_s.reverse && i.to_s(2) ==i.to_s(2).reverse)? sum + i : i}