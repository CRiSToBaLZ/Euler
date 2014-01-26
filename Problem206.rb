# Find the unique positive integer whose square has the form 1_2_3_4_5_6_7_8_9_0,
# where each “_” is a single digit.

beginning_time = Time.now

(1010101010..1414213562).step(10) do |i|
  isqr = i**2
  if isqr.to_s[2] == "2" and  isqr.to_s[4] == "3" and isqr.to_s[6] == "4" and isqr.to_s[8] == "5" and isqr.to_s[10] == "6" and isqr.to_s[12] == "7" and isqr.to_s[14] == "8" and isqr.to_s[16] == "9" and isqr.to_s[18] == "0"
    # if (0..(isqr).to_s.length-1).step(2).collect { |x| (isqr).to_s[x]}.join.to_i == 1234567890 #THIS SLOWED IT DOWN
    puts (isqr).to_s + " WINNER! Integer is " + i.to_s
    break
  # else  #THIS MAJORLY SLOWED IT DOWN
  #   puts (isqr).to_s + " LOSER"
  #   # end
  end
end


end_time = Time.now
puts
puts "Time elapsed #{(end_time - beginning_time)} seconds"

