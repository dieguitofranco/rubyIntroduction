p []
p [].class

numbers = [1,3,4,2,1,3,5,7,3]
puts numbers
print numbers
p numbers

toys = ["teddy", "Axel", "slash", "james"]
puts toys
print toys
p toys
p toys.fetch(2)
p toys.fetch(200, "unknow")

things = [4, true, "hello", 4.0]
print things

students =[["hello","word"],["diego","franco"],["carlos","casta"]]
print students[1][1]

names = %w[diego carlos paola katherine]
puts names

vect= Array.new(10, 0)
vect[4]= 5
p vect[1000]

vect[0..1] =5
p vect.size
p vect.length
p vect.first(3)
p vect.last(2)

def returnLast (a)
  return a.last(1)
end

p returnLast(vect)
