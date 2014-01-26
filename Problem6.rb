
def sumSquares num
  squarestance = 0
  sum = 0
  for i in 1..num
    squarestance = i * i
    sum += squarestance
  end
  # puts 'The sum of the first ' + num.to_s + ' natural numbers is ' + sum.to_s + '.'
  return sum
end

def squareSums num
  sum = 0
  squared = 0
  for i in 1..num
    sum += i
  end
  squared = sum * sum
  # puts 'The square of the sums of the first ' + num.to_s + ' natural numbers is ' + squared.to_s + '.'
  return squared
end

puts 'Enter a natural number.'

firstwhatstr = gets.chomp
firstwhat = firstwhatstr.to_i


squaredSums = squareSums firstwhat
summedSquares = sumSquares firstwhat

difference = squaredSums - summedSquares
puts  'The difference between the square of the sums and the sum of the squares',
      'of the first ' + firstwhat.to_s + ' natural numbers is ' + difference.to_s + '. '

