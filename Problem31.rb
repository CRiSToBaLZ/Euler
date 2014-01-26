# In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:
# 
# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
# It is possible to make £2 in the following way:
# 
# 1£1 + 150p + 220p + 15p + 12p + 31p
# How many different ways can £2 be made using any number of coins?


def make_change2(amount, coins)
  n, m = amount, coins.size
  table = Array.new(n+1){|i| Array.new(m, i.zero? ? 1 : nil)}
  for i in 1..n
    for j in 0...m
      table[i][j] = (i<coins[j] ? 0 : table[i-coins[j]][j]) +
                    (j<1        ? 0 : table[i][j-1])
    end
  end
  table[-1][-1]
end
 
p make_change2(   2_00, [1,2,5,10,20,50,100,200])

#note: got demotivated after trying to install gecoder gem (which doesnt work for Ruby 1.9) and then got this solution from Rosetta Code