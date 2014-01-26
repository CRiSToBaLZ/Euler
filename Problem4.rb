largest_product = 998001

# What to do
# Take 999 and multiply it by 999, then check if it is palindrome, if it is, log number,
# then take 999 multiply it by 998, then check palindrome, compare size, if bigger log
# Repeat down to 0
# Then take 998 and repeat down to zero


x = 999
y = 999
king_pali = 0

while x > 0
  while y > 0
    product = x * y
    prodstr = product.to_s
    prodstr_rev = prodstr.reverse
    product_rev = prodstr_rev.to_i
    if product == product_rev
      if product > king_pali
        king_pali = product
        first = x
        second = y
        # puts x.to_s + ' * ' + y.to_s + ' = ' + king_pali.to_s
      end
    end
    y = y - 1
  end
  y = 999
  x = x - 1
end

puts first.to_s + ' * ' + second.to_s + ' = ' + king_pali.to_s