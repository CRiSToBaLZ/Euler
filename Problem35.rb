# The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.
# 
# There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
# 
# How many circular primes are there below one million?

beginning_time = Time.now

require 'prime'
circleCount = 0
circlePrime = true

1.upto(1_000_000) do |i|
    if i.prime? == true
      array = 0.upto(i.to_s.length).collect { |h| (i.to_s*2)[h, i.to_s.length] }.uniq
      0.upto(array.length-1) do |k|
        if array[k].to_i.prime? != true
          circlePrime = false
        end
      end
      if circlePrime != false
        p i
        circleCount += 1
    end
      circlePrime = true
    end
end

puts
puts circleCount

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)} seconds"
