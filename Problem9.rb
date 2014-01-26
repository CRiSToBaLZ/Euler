beginning_time = Time.now


number = 1000

a = 1
b = 2
c = 3


while a < number
  while b < number
    while c < number
      # puts a.to_s + ' ' + b.to_s + ' ' + c.to_s
      if a**2 + b**2 == c**2
        if a + b + c == number
          puts a.to_s + ' + ' + b.to_s + ' + ' + c.to_s + ' = 1000.'
          product = a*b*c
          puts 'product = ' + product.to_s
        end
      end
      c+=1
    end
    b += 1
    c = b+1
  end
  a += 1
  b = a +1
  c = b + 1
end


end_time = Time.now
puts
puts "Time elapsed #{(end_time - beginning_time)} seconds"
