beginning_time = Time.now


class Integer
  def pentagonal?
    if ((Math.sqrt(24*self+1)+1)/6)%1 == 0
      return true
    end
  end
end

2.upto(1000000000) do |x|
  if x.pentagonal? == true
    x.downto(1) do |y|
      if y.pentagonal? == true
        if (x+y).pentagonal? == true
          puts x.to_s + " " + y.to_s + " " + (y-x).to_s
          if (x-y).pentagonal? == true
            puts x.to_s + " " + y.to_s + " " + (y-x).to_s + " KA-CHING!"
            break
          end
        end
      end
    end
  end
end

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)} seconds"
      