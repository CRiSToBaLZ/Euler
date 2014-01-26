# It can be seen that the number, 125874, and its double, 251748, contain exactly the same digits, but in a different order.
# 
# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.
# 

beginning_time = Time.now

sameDigitsCount = 1

1.upto(170_000) do |i|
  if i.to_s[0,2].to_i < 17
    6.downto(2) do |j|
      if i.to_s.split("").sort.join == (j*i).to_s.split("").sort.join
        sameDigitsCount += 1
      else
        break
      end
    end
    if sameDigitsCount == 6
      puts i
    end
    sameDigitsCount = 1
  end
end

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)} seconds"