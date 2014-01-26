# Take 20 and % it by the numbers 1-10, if they are all evenly divisible then print
# If one is not evenly divisible, then break.
# Take 21 and repeat.

puts 'Please enter your number.'
start_num_str = gets.chomp
start_num = start_num_str.to_i
numberfound = false
number = start_num
count = 0

while numberfound == false
  for i in 1..start_num
    if number%i == 0
      count += 1          #if no remainder, increase count
    else
      next
    end
  end
  if count == start_num
    numberfound = true    #if count equals start number, then all numbers were divisible
  else
    number += 1           #if count does not equal start number, then increase number
  end
  count = 0
end

puts number.to_s + ' is the smalleset number that can be divided by all the numbers 1- ' + start_num.to_s + ' without any remainder'
