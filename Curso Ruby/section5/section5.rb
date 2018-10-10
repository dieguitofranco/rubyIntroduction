def my_Name
  puts "My name is Diego Franco"
end
my_Name

def my_Name_Params(name,age)
  puts "Hi my name is #{name} and I am #{age} years old"
end
my_Name_Params("Diego Franco",27)

def mult_number(n1,n2)
  return n1*n2
end
puts mult_number(2,10)

def phone_call (number,int_code = 6 , area_code = 17001)
  puts "your Number is #{number} the code is #{int_code} and area code #{area_code}"
end
phonecall(3127921062)
phonecall(3127921062,57,17001)


def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def multiply(a,b)
  a * b
end

def calculator(a, b, operation = "add")
  if operation == "add"
    "the add is #{add(a, b)}"
  elsif operation == "subtract"
    "the subtracting is #{subtract(a, b)}"
  elsif operation == "multiply"
    "the multiplying is #{multiply(a, b)}"
  else
    puts "Invalid operation"
  end

end
puts calculator(10, 5, "add")


word = "Manizales"
number = 192
if word.length == 9
  puts "nine letters"
end
if word.include?("niza")
  puts "the word contain niza "
end
if number.odd?
  puts "is odd"
else
  puts "is even"
end

note = "A"
if note == "A"
  puts "you Pass "
elsif note == "B"
  puts "you pass but you need study"
else
  puts "Unacceptable"
end
