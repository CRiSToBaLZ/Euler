
array=1.upto(1_000_000).to_a.join

p array[10].to_i
p array[11].to_i
p array[12]
p array[13]

p sum = array[0].to_i*array[9].to_i*array[99].to_i*array[999].to_i*array[9_999].to_i*array[99_999].to_i*array[999_999].to_i