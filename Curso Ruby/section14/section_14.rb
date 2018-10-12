def pass_control
  puts "This is inside the method¡¡¡¡¡¡"
  yield
  puts "Now I'm back inside the method"
end
pass_control{puts "I am the block"}

pass_control do
  puts "This is line 1 of the block"
  puts "I am the method"
end

def who_am_i
   adjective = yield
   puts "I am very #{adjective}"
end
who_am_i{"handsome"}
who_am_i{"talented"}

a = [1, 2, 3, 4]
b = [5, 6, 7, 8]
c = [2, 6, 9, 0]

cubes = Proc.new {|num| num ** 3}
p a.map(&cubes)
p b.map(&cubes)
p c.map(&cubes)

a_cubes, b_cubes, c_cubes = [a, b, c].map{|array| array.map(&cubes)}
p a_cubes
p b_cubes
p c_cubes

currencies = [10, 20, 30, 40, 50,800]
to_pesos = Proc.new{|current| "$#{current * 3100}pesos"} p currencies.map(&to_pesos)


def pass_control
  puts "This is inside the method¡¡¡¡¡¡"
  if block_given?
    yield #pass control to the method to the block
  end
    puts "Now I'm back inside the method"
end
pass_control

def speak_truth
  yield ("<") if block_given?
end
speak_truth {|name| puts "#{name} is an enginner"}

def speak_truth(name)
   yield (name) if block_given?
end
speak_truth("Diego") {|name| puts "#{name} is an enginner"}

def custom_each(array)
 i = 0
 while i < array.length
     yield array[i]
     i += 1
 end
end
names = ["Deigo", "Alejandro", "Carlos"]
num = [5, 6, 63]

custom_each(names){ |name| puts "The length of #{name} is #{name.length}"}
custom_each(num){ |val| puts "The square of #{val} is #{val ** 2}"}

p ["1", "2", "3", "4"].map {|num| num.to_i}
p ["1", "2", "3", "4"].map(&:to_i)

p [1, 2, 3, 4].map {|num| num.to_s}
p [1, 2, 3, 4].map(&:to_s)

p [1, 2, 3, 4].select(&:even?)
p [1, 2, 3, 4].select(&:odd?)


def talk_about(name , &myproc)
   puts "Let me tell you about #{name}"
   myproc.call(name)
end

good_things = Proc.new { |name| puts "#{name} is a genius"  }
bad_things = Proc.new { |name| puts "#{name} is a dolt"  }
talk_about("Diego", &good_things)
talk_about("Diego", &bad_things)


some_proc = Proc.new {|name, age| "Your name is #{name} and your age is #{age}" }
p some_proc.call("Diego")

some_lambda = lambda {|name, age| "Your name is #{name} and your age is #{age}" } # one
p some_lambda.call("Diego",27)

def diet
   status = Proc.new {return "You gave in¡¡¡¡¡"}
   status.call
   "You completed the diet"
end
result = diet
p diet

def diet1
   status = lambda {return "You gave in¡¡¡¡¡"}
  status.call
  "You completed the diet"
end
result = diet1
p diet1

to_euros = lambda { |dollars| dollars * 0.95}
to_pesos = lambda { |dollars| dollars * 20.7}
to_ruppes = lambda { |dollars| dollars * 68.13}

def convert(dollars, currency_lambda)
 currency_lambda.call(dollars) if dollars.is_a?(Numeric)
end
p convert(1000, to_euros)
p convert(1000, to_pesos)
p convert(1000, to_ruppes)
p [1000, 2000, 3000].map(&to_pesos)
