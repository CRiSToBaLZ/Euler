# The number, 1406357289, is a 0 to 9 pandigital number because it is made up of each of the digits 0 to 9 in some order, but it also has a rather interesting sub-string divisibility property.
# 
# Let d1 be the 1st digit, d2 be the 2nd digit, and so on. In this way, we note the following:
# 
# d2d3d4=406 is divisible by 2
# d3d4d5=063 is divisible by 3
# d4d5d6=635 is divisible by 5
# d5d6d7=357 is divisible by 7
# d6d7d8=572 is divisible by 11
# d7d8d9=728 is divisible by 13
# d8d9d10=289 is divisible by 17
# Find the sum of all 0 to 9 pandigital numbers with this property.
# 

beginning_time = Time.now


class Array
  def props
    if self[7..9].join.to_i%17 == 0
      if self[6..8].join.to_i%13 == 0
        if self[5..7].join.to_i%11 == 0
          if self[4..6].join.to_i%7 == 0
            if self[3..5].join.to_i%5 == 0
              if self[2..4].join.to_i%3 == 0
                if self[1..3].join.to_i%2 == 0
                  return true
                end
              end
            end
          end
        end
      end
    end
  end
end


possibilities = [0,1,2,3,4,5,6,7,8,9].permutation(10).to_a
sum = 0


0.upto(possibilities.length-1) do |i|
  if possibilities[i].join.split("").props == true
    puts possibilities[i].join
    sum += possibilities[i].join.to_i
  end
end

puts "Sum is: " + sum.to_s

end_time = Time.now
puts
puts "Time elapsed #{(end_time - beginning_time)} seconds"

# Sum is: 16695334890

# 1000.upto(9999) do |i|
#   if i.to_s[1..3].to_i%17 == 0
#     if i.to_s[0..2].to_i%13 == 0
#       puts i
#     end
#   end
# end

