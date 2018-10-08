def rate_my_food(food)

  case food.upcase
  when "STEAK"
    "I love the steak"
  when "SUSHI"
    "great choise, is a good food"
  when "TACOS", "BURRITOS", "QUESADILLAS"
    "i dont like this food"
  else
    "I don't know about that food"
  end

end
puts rate_my_food("Steak")

def calculate_grade(grade)

  case grade
  when 90..100
    "A"
  when 80..89
    "B"
  when 70..79
    "C"
  when 60..69
    "D"
  else
    "F"
  end

end
puts calculate_grade(95)
puts calculate_grade(60)

puts !true
puts !false


password = "12345678"
unless password == "12345678"
  puts "is a bad pass"
else
  puts "That's the right password"
end


i = 1
while i < 10
  puts i
  i += 1
end

i=1
until i>9
  puts i
  i += 1

end



def fizzbuzz(num)
  i = 1
  while i < num
    if i % 5 == 0 && i % 3 == 0
      puts  "FizzBuzz for #{i}"
    elsif i % 5 == 0
      puts "Buzz for #{i}"
    elsif i % 3 == 0
      puts "Fizz for #{i}"
    else
      puts i
    end
    i += 1
  end
end
puts fizzbuzz(100)

status = true
while status
  print "Please enter username: "
  username = gets.chomp.downcase
  print "Please enter password: "
  password = gets.chomp.downcase

  if (username == "Diego") && (password == "1053")
    puts "Entry granted"
    status = false
  elsif (username == "quit") || (password == "quit")
    puts "Good bye "
    status = false
  else
    puts "Incorrect combination, try again or enter quit to leave"
  end
end
