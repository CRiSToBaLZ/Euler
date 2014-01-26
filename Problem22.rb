# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.
# 
# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 53 = 49714.
# 
# What is the total of all the name scores in the file?

# File.open('names.txt','r') do |f|
#   while line = f.gets
#     puts line
#   end
# end

# SortedNames = File.readlines('names.txt').sort
# 
# puts SortedNames

# File.open("names.txt").readlines.each do |line|
#   puts line
# end

# p array = File.read("names.txt").split(",").map(&:strip).sort
beginning_time = Time.now


def alphaValue(name)
  alphaArray = ("A".."Z").to_a
  value = name.split(//).map{ |letter| alphaArray.index(letter)+1}.reduce(:+)
  return value
end
  
array = File.read("names.txt").split(",").map!{ |name| name.gsub(/"/,'')}.sort
# array = CSV.read("names.txt").shift.sort #shorter alternative write, longer to run, requires 'csv'

sum = 0

0.upto(array.length-1) do |i|
  nombre = array[i]
  sum+=(i+1)*alphaValue(nombre)
end

puts sum

end_time = Time.now

puts "Time elapsed #{(end_time - beginning_time)} seconds"
