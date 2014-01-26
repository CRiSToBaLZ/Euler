# Prime permutations
# Problem 49
# 
# The arithmetic sequence, 1487, 4817, 8147, in which each of the terms increases by 3330, is unusual in two ways: (i) each of the three terms are prime, and, (ii) each of the 4-digit numbers are permutations of one another.
# 
# There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes, exhibiting this property, but there is one other 4-digit increasing sequence.
# 
# What 12-digit number do you form by concatenating the three terms in this sequence?

require 'prime'

forPrimes = Prime.take_while {|p| p < 9999 }.drop_while { |i| i< 1000 }
diff = 0

0.upto(forPrimes.length-1) do |i|
  term1 = forPrimes[i]
  perms = forPrimes[i].to_s.split("").permutation.to_a.map{|x| x.join("").to_i}.select {|x| (x>term1 and x.prime?)}.uniq.sort
  0.upto(perms.length-1) do |h|
    term2 = perms[h]
    diff = term2 - term1
    0.upto(perms.length-1) do |g|
      term3 = perms[g]
      if term2 + diff == term3
        puts term1
        puts term2
        puts term3
        conca = term1.to_s << term2.to_s << term3.to_s 
        puts conca.to_i
        puts
      end
    end
  end
end


