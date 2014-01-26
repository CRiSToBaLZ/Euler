puts   'Enter a number of divisors and I will tell you',
'the first triangle number to have more than that many divisors:'

divisorGoal = gets.chomp.to_i
numberDivisors = 1
x=1

require 'prime'

until numberDivisors > divisorGoal
  numberDivisors=1
  naturalsum = 0
  for i in 0..x
    naturalsum+=i
  end
  factorized = naturalsum.prime_division
  for i in 0..factorized.length-1
    numberDivisors*=factorized[i][1]+1
  end
  x+=1
end

puts 'The value of the first triangle number to have more than ' + divisorGoal.to_s  + ' divisors is ' + naturalsum.to_s + '.'


# this was too slow
# naturalsum = 0
# 
# class Integer
#   def factors() 
#     (1..self).select{|n|(self%n).zero?}
#   end
# end
# 
# 
# until naturalsum.factors.length > divisorGoal
#   naturalsum = 0
#   for i in 0..x
#     naturalsum+=i
#   end
#   puts 'natural sum ' + naturalsum.to_s  
#   if naturalsum.factors.length> divisorGoal
#     puts naturalsum
#   else
#     x+=1
#   end
# end