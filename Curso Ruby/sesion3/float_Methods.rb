p 10.5.to_i
p 10.9.floor
p 10.5.ceil

p 3.141516.round(3)
p 3.6.round

p -35.67.abs

5.times{puts "good course"}

3.times do |i|
  puts "good course #{i+1}"
  puts "ruby is a good languaje for me "
end

3.times  {|count| puts  "we are number #{count}"}

5.downto(1){|i| puts "count down #{i}"}

5.downto(0) do |current_number|
   puts "we are currently #{current_number}"
   puts "horray"
end

puts "LIFFOFF!"

0.upto(12) do |count|
  puts ("hello word #{count}")
end

0.step(100,5) {|number| puts number}
