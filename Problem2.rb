first = 0
second = 1
fibostance = 0
fibosum = 0

while fibostance <= 4000000
  fibostance = first + second
  first = second
  second = fibostance
  if fibostance%2 == 0
    fibosum += fibostance
  end
end

puts fibosum