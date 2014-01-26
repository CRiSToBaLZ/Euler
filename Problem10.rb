
require 'prime'

primesum = 0

for i in 1..2000000-1
	if i.prime? == true
		primesum+=i
  end
end

puts primesum



# require "prime"
# sum = 0
# Prime.each(2_000_000) do |prime|
# sum += prime
# end
# sum