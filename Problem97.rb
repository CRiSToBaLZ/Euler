beginning_time = Time.now


p ((28433*(2**7830457))+1).to_s.split("").last(10).join.to_i

end_time = Time.now
puts
puts "Time elapsed #{(end_time - beginning_time)} seconds"
