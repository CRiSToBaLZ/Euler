# Euler discovered the remarkable quadratic formula:
# 
# x² + x + 41
# 
# It turns out that the formula will produce 40 primes for the consecutive values x = 0 to 39. However, when x = 40, 402 + 40 + 41 = 40(40 + 1) + 41 is divisible by 41, and certainly when n = 41, 41² + 41 + 41 is clearly divisible by 41.
# 
# The incredible formula  x² - 79x + 1601 was discovered, which produces 80 primes for the consecutive values x = 0 to 79. The product of the coefficients, 79 and 1601, is 126479.
# 
# Considering quadratics of the form:
# 
# x² + bx + c, where |b| < 1000 and |c| < 1000
# 
# where |x| is the modulus/absolute value of x
# e.g. |11| = 11 and |-4| = 4
# Find the product of the coefficients, b and c, for the quadratic expression that produces the maximum number of primes for consecutive values of x, starting with x = 0.
beginning_time = Time.now

x = 0
a = 1
b = 0
c = 0
primeCount = 0
primeKingCount = 0
production = 0

require 'prime'
require 'mathn'

-999.upto(999) do |b|
  -999.upto(999) do |c|
    # puts b.to_s + ' . ' + c.to_s
    while (x**2 + b*x + c).prime?
      primeCount+=1
      x+=1
    end
    if primeCount > primeKingCount
      primeKingCount = primeCount
      puts "King Prime Count is " + primeKingCount.to_s + ". x is " + (x-1).to_s + ". b is " + b.to_s + ". c is " + c.to_s
      production = b*c
    end
    primeCount = 0
    x = 0
  end
end

puts production

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)} seconds"


# 
# x = (-b - Math.sqrt((b**2) - (4*a*c)))/(2*a)
# if x % 1 == 0
#   puts "x = " + x.to_s + ". a = " + a.to_s + ". b= " + b.to_s + ". c = " + c.to_s + "."