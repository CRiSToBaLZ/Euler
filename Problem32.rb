# We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.
# 
# The product 7254 is unusual, as the identity, 39 * 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.
# 
# Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.
# 
# HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.

beginning_time = Time.now


# Looking at multiplication lows and highs it is shown that multiplicand *
# multiplier must be one-digit * four-digit or two-digit * three digit 
# in or order for the total number of digits for multiplier, multiplicand and
# product to be 9

possibilities3 = [1,2,3,4,5,6,7,8,9].permutation(3).to_a
possibilities4 = [1,2,3,4,5,6,7,8,9].permutation(4).to_a

sumProductA = []
sumProductB = []

# one-digit multiplicand * four-digit multiplier
1.upto(9) do |multiplicandA|
  0.upto(possibilities4.length-1) do |j|
    multiplierA = possibilities4[j].join.to_i
    productA = multiplicandA * multiplierA
    if [multiplicandA,multiplierA,productA].join.split("").sort.join == "123456789"
      sumProductA << productA
      # puts multiplicandA.to_s + " * " + multiplierA.to_s + " = " + productA.to_s
    end
  end
end

# two-digit multiplicand * three-digit multiplier
12.upto(98) do |multiplicandB|
  0.upto(possibilities3.length-1) do |h|
    multiplierB = possibilities3[h].join.to_i
    productB = multiplicandB * multiplierB
    if [multiplicandB,multiplierB,productB].join.split("").sort.join == "123456789"
      sumProductB << productB
      # puts multiplicandB.to_s + " * " + multiplierB.to_s + " = " + productB.to_s
    end
  end
end

puts
puts  "The sum of all products whose multiplicand/multiplier/product identity"\
      "can be written as a 1 through 9 pandigital is: "+ (sumProductA + sumProductB).uniq.reduce(:+).to_s
      
end_time = Time.now
puts
puts "Time elapsed #{(end_time - beginning_time)} seconds"