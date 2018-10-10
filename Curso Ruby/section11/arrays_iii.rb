a = [3, 2, 5, 4]
b = a.dup
c = a
puts a.object_id
puts b.object_id
puts c.object_id



def sum(*numbers)
  sum = 0
  numbers.each {|num| sum += num}
  sum
end

p sum(1,2,3,4)
p sum(3,4,5,67,7,-2)


a = [12, 1, 8, 3, 2, 9]
p a.any? do |number|
  number.even?
end

p a.all? {|x| x.odd? }


words = ["dictionary", "refrigerator", "platypus", "microware"]
p words.select { |word| word.length > 5 }
p words.find { |word| word.length > 5 }
p words.detect { |word| word.length > 5 }


numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 1]
p numbers.uniq

p [1, nil, 2, 4, false, nil].compact


result = [10, 20, 30, 40].reduce(5) do |previous, current|
  puts "The previous value is #{previous}"
  puts "The current value is #{current}"
  previous + current
end
puts result

result = [10, 20, 30, 40].inject(2) do |previous, current|
  puts "The previous value is #{previous}"
  puts "The current value is #{current}"
  previous + current
end
puts result

numbers = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
print numbers
print numbers.flatten

names = ["Bob", "Juan", "Fabi"]
reg = [true, false, false ]
p names.zip(reg)

flavors = ["Chocolate", "Vanilla", "Strayberry"]
puts flavors.sample
p flavors.sample(2)

p [1, 2, 3] | [3, 4, 5]

p [1,2,3,4,5] - [1, 5]

p [1,2,3,4,5] & [1, 5]
