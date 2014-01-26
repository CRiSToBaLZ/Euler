# Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:
# 
# 21 22 23 24 25
# 20  7  8  9 10
# 19  6  1  2 11
# 18  5  4  3 12
# 17 16 15 14 13
# 
# It can be verified that the sum of the numbers on the diagonals is 101.
# 
# What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?

p 3.upto(1001).inject(0) { |diagonalSum,sideLen| (0 != sideLen%2) ? diagonalSum += 4*(sideLen**2) - 6*sideLen + 6 : diagonalSum} + 1


# diagonalSum = 1
# 
# 
# 3.upto(1001) do |i|
#   if i%2 != 0
#     topRight = i**2
#     # puts "Top Right: " + topRight.to_s
#     topLeft = topRight - i + 1
#     # puts "Top Left: " + topLeft.to_s
#     bottomLeft = topLeft - i + 1
#     # puts "Bottom Left: " + bottomLeft.to_s
#     bottomRight = bottomLeft - i + 1
#     # puts "Bottom Right: " + bottomRight.to_s
#     diagonalSum += topRight + topLeft + bottomLeft + bottomRight
#     # puts
#   end
# end
# 
# puts "Diagonal Sum is " + diagonalSum.to_s

# i**2 + i**2 - i + 1 + i**2 - i + 1 - i + 1 + i**2 - i + 1 - i + 1-i+1
# 
# 4*(i**2) - 6*i + 6