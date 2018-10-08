
nums = 1..1000
puts nums.first(111)
puts nums.last(50)
puts ("a".."z").first(5)

a = "A".."z"
puts "the size for a is #{a.size}"
p a

b = 0..11
puts " the size for b is #{b.size}"
p b


alhabet = "a"..."m"
puts alhabet.include?("m")
puts alhabet === "m"


puts rand
puts rand.round(3)
puts rand(10..100)
