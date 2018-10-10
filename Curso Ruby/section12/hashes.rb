soccer = {"James R" => "Captain" , "Falcao" => "Goal scorer", "Ospina" => ["Goalkeeper", "Young"]}
p soccer.class
p soccer["James R"]
p soccer["Ospina"]
p soccer["Franco"]

p :name.class

person = {:name => "Diego", :lastname => "Franco", :age => "27"}
p person[:age]
person1 = {name: "Carlos", lastname:"Casta", age:"274"}
p person1[:name]


p :index.to_s.class
p "index".to_sym.class

menu = {burger: 4.99, taco: 5.96, chips: 0.6 }
p menu.fetch(:taco)
p menu.fetch(:salad, "i dont have this element")

menu = {burger: 3.99, taco: 5.96, chips: 0.6 }
menu[:sandwich] = 8.99
p menu
menu.store(:sushi, 24.99)
p menu

menu = {burger: 3.99, taco: 5.96, chips: 0.6 }
shopping = {}
p menu.length
p menu.empty?
p shopping.empty?


menu = {burger: 3.99, taco: 5.96, chips: 0.6 }
menu.each do |k,value|
  puts "The key is :#{k} and value is:#{value}"
end


hash_1 = {a: 5, b: 2, c: 3, d: 5}
def value_count(hash , value)
  count = 0
  hash.each {|key , val| count +=1 if val == value}
  p count
end
value_count(hash_1, 2)
value_count(hash_1, 3)
value_count(hash_1, 5)
value_count(hash_1, 10)


def value_count(hash , value)
  count = 0
  hash.each_value {|val| count +=1 if val == value}
  p count
end
value_count(hash_1, 2)
value_count(hash_1, 3)
value_count(hash_1, 5)
value_count(hash_1, 10)

def value_count(hash , value)
  hash.each_key {|key| p key}
end
value_count(hash_1, 2)

menu = {burger: 3.99, taco: 5.96, chips: 0.6 }
p menu.keys
p menu.values
