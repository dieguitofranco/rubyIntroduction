numbers = [1,2,3,5,4,6,7,8,4]
p numbers[0]
p numbers[2, 4]
p numbers[1, 3]
p numbers[0, 1]
puts numbers[3,4]
p numbers[3..6]
p numbers[3...6]

p numbers.values_at(3,5,7)
p numbers.values_at(1,3,5,2,100)


p numbers.count(5)

p [1,4,3] <=>[1,4,-3]

letters_range = "A".."Z"
p letters_range
letters_array = letters_range.to_a
p letters_array

p 1.class
p 3.1416.class
p 9999999999999999999999999.class
p true.class
p false.class
p nil.class
p [1,2,3].class

puts
puts

puts 1.is_a?(Fixnum)
