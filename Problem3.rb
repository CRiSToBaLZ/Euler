puts "Enter a number for which you'd like to find the largest prime factor."
numstr = gets.chomp
number = numstr.to_i
primefactor = 0

for i in 2..number/2
  if number%i == 0      #if it passes this then i is a factor
    check = 0
    for y in 2..i-1ma
      if i%y == 0       #if it fails this then i is a prime factor
        check = 1
        break
      end
    end
    if check != 1
      if i > primefactor
        primefactor = i
      end
    end
  end
end

puts primefactor

# # forum answer
# require 'mathn'
# 317584931803.prime_division.last[0]