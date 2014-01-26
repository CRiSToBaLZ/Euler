# If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, there are exactly three solutions for p = 120.
# 
# {20,48,52}, {24,45,51}, {30,40,50}
# 
# For which value of p <= 1000, is the number of solutions maximised?
# 
beginning_time = Time.now


class Integer
  def num_solutions
    solutions = []
    a,b,c = 1,1,0
    while a < self
      while b < self 
      c = self-a-b
        if a**2 + b**2 == c**2
          solutions << [a,b,c]
        end
        b+=1
      end
      b=1
      a+=1
    end
    return solutions.map { |x| x.sort}.uniq.length
  end
end

solutions = 0
maxP = 0
maxSolutions = 0

1.upto(1000) do |p|
  if p%1 == 0
    solutions = p.num_solutions
    if solutions > maxSolutions
      maxSolutions = solutions
      maxP = p
      puts maxP.to_s + " " + maxSolutions.to_s
    end
  end
end

p maxP
  

end_time = Time.now
puts
puts "Time elapsed #{(end_time - beginning_time)} seconds"


