# The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.
# 
# Find the sum of the only eleven primes that are both truncatable from left to right and right to left.
# 
# NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

beginning_time = Time.now


require 'prime'

trunkSum = 0
trunkCount = 0
trunkPrime = true
i = 11

until trunkCount == 11
    if i.prime? == true
      array = (0.upto(i.to_s.length-1).collect { |j| i.to_s[j, i.to_s.length]} + 0.upto(i.to_s.length-1).collect { |j| i.to_s[0..-j-1]}).uniq
      0.upto(array.length-1) do |k|
        if array[k].to_i.prime? != true
          trunkPrime = false
        end
      end
      if trunkPrime != false
        p i
        trunkCount+=1
        trunkSum += i
      end
      trunkPrime = true
    end   
    i+=1
end

puts
puts trunkSum


end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)} seconds"
