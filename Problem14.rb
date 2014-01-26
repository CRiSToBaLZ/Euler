puts "Enter a number under which you'd would like to find the longest Collatz sequence."
limit = gets.chomp.to_i
num=1
kingCollatz=0

while num < limit
  countn=1
  n=num
  while n > 1
    if n%2==0
      n = n/2
    else
      n = 3*n +1
    end
    # puts n
    countn+=1
  end
  if countn > kingCollatz
    kingCollatz = countn
    kingNum = num
  end
  num+=1
end

puts "Longest chain is " + kingCollatz.to_s + " and is produced by starting number " + kingNum.to_s + "."