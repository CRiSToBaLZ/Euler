num = 2**1000
nums = num.to_s
sum = 0

for i in 0 .. nums.length-1
  sum += nums[i].to_i
end

puts sum

# sum = (2**1000).to_s.split('').map {|x| x.to_i}.inject(:+)