puts 'What is the starting number?'
start = gets.chomp
number = start.to_i
puts
puts 'What is the ending number?'
ending = gets.chomp
end_num = ending.to_i
sum = 0
puts

while number < end_num
	if number%3 == 0
		sum += number
	elsif number%5 == 0
		sum += number
	end
	number += 1
end

puts 'The sum of all the multiples of 3 or 5 below ' + ending + ' is ' + sum.to_s + '.'