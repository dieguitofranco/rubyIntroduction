today =  Time.new
p today
x = Time.new(2015)
p x
x = Time.new(2014, 3, 22, 21, 30, 59)
p x

today = Time.new
p today.month
p today.day
p today.year
p today.hour
p today.min
p today.sec
p today.yday
p today.wday
p today.monday?
p today.tuesday?
p today.wednesday?
p today.thursday?
p today.friday?
p today.saturday?
p today.sunday?
p today + 60
someday = Time.new(2000, 2, 15)
p someday.to_s
p someday.ctime
p someday.to_a
today = Time.new
p today.strftime("%B %d %Y, %H:%M:%S")
require 'time'
puts Time.parse("2016-01-01").class
puts Time.parse("03-04-2000")
puts Time.strptime("03-04-2000", "%d-%m-%Y")
