puts "How big do you want the grid to be?  Enter a number M for the grid to be M x M in size."
gridSizestr=gets.chomp
gSreal=gridSizestr.to_i     #grid size
#adaptation of grid size to matrix-style format with first row 
#and first column acting as top line and left line of matrix.
gS=gridSizestr.to_i+1       


table = Array.new(gS) { Array.new(gS,0)}

table[0] = Array.new(gS,1)  #easy to see that each cell in first row has one route option

for i in 0..gS-1
  table[i][0]=1             #easy to see that each cell in first column has one route option
end

y=1
x=1

while y < gS
  while x < gS
#to find a cell's routes, add together upper cell routes and left cell routes   
 table[y][x]=table[y-1][x]+table[y][x-1]   
    x+=1
  end
  x=1
  y+=1
end

#Bottom right cell shows total number of routes to bottom right corner
puts "There are exactly " + table[gS-1][gS-1].to_s + " routes to the bottom right corner of a " +gSreal.to_s+"x"+gSreal.to_s+" grid."