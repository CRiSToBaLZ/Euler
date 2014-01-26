# The Fibonacci sequence is defined by the recurrence relation:
# 
# Fn = Fn1 + Fn2, where F1 = 1 and F2 = 1.
# Hence the first 12 terms will be:
# 
# F1 = 1
# F2 = 1
# F3 = 2
# F4 = 3
# F5 = 5
# F6 = 8
# F7 = 13
# F8 = 21
# F9 = 34
# F10 = 55
# F11 = 89
# F12 = 144
# The 12th term, F12, is the first term to contain three digits.
# 
# What is the first term in the Fibonacci sequence to contain 1000 digits?

beginning_time = Time.now

first = 0
second = 1
fibostance = first + second
term = 1

until fibostance.to_s.length == 1000
  fibostance = first + second
  term +=1
  first = second
  second = fibostance
end

puts term
puts fibostance

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)} seconds"


# fibs = [1, 1]
# fibs << fibs.last(2).inject(:+) until fibs.last.to_s.length >= 1000
# puts fibs.count - 1