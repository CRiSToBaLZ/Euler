# Take the number 192 and multiply it by each of 1, 2, and 3:
# 
# 192*1 = 192
# 192*2 = 384
# 192*3 = 576
# By concatenating each product we get the 1 to 9 pandigital, 192384576. We will call 192384576 the concatenated product of 192 and (1,2,3)
# 
# The same can be achieved by starting with 9 and multiplying by 1, 2, 3, 4, and 5, giving the pandigital, 918273645, which is the concatenated product of 9 and (1,2,3,4,5).
# 
# What is the largest 1 to 9 pandigital 9-digit number that can be formed as the concatenated product of an integer with (1,2, ... , n) where n  1?

# range of product is (91..99), (918..999), (9182..9999) ... (91827364..99999999)

beginning_time = Time.now


class Integer
  def concat_prod
    x = 1
    conProd = ""
    conProdInt = 0
    while conProdInt <= 987654321
      conProdChk = conProdInt
      prod = self*x
      conProd << prod.to_s
      conProdInt = conProd.to_i
      x+=1
    end
    if conProdChk.to_s.split("").sort.join.to_i == 123456789
      return conProdChk
    else
      return 0
    end
  end
end

winner = 0

1.upto(9876) do |i|
  if i.to_s[0].to_i >= 9
    if i.to_s.length == i.to_s.split("").uniq.length
      # puts i
      z = i.concat_prod
      if z > 0
        puts z
        if z > winner
          winner = z
          puts winner.to_s + " " + i.to_s + " WINNING"
        end
      end
    end
  end
end

# puts winner

end_time = Time.now
puts
puts "Time elapsed #{(end_time - beginning_time)} seconds"