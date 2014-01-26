# You are given the following information, but you may prefer to do some research for yourself.
# 
# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

d = 1

m = 1

y = 1901

sunCount=0

require 'time'

while y <= 2000
  while m <= 12
    if Time.local(y, m, 1).sunday? == true
      sunCount+=1
    end
    m+=1
  end
  m=1
  y+=1
end

puts sunCount


#Other options

# # Ruby two-liner
# require 'date'
# (Date.new(1901,1,1)..Date.new(2000,12,31)).inject(0) {|s,d| d.day == 1 && d.wday == 0 ? s+1 : s}

# #Ruby Sunday two-liner
# require 'date'
# puts (Date.new(1900)..Date.new(2000)).select { |d| d.mday == 1 and d.wday == 6 }.size

#  uses one while loop by combining year + month
# require 'Date'
# 
# d=Date.new(1901,1,1)
# stop=Date.new(2000,12,31)
# 
# count=0
# while d < stop
#   count+=1 if d.sunday?
#   d>>=1 # add a month to date
# end
# 
# p count

