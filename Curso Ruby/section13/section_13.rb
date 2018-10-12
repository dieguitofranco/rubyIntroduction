fruit_prices = Hash.new("Not found")
fruit_prices[:banana] = 1.05
fruit_prices[:orange] = 0.69
p fruit_prices[:banana]
p fruit_prices[:steak]
fruit_prices.default = "Upsssssss"
p fruit_prices[:steak]
hash_1 = {a: 1, b:2, c:3, d:100}
p hash_1.to_a
p hash_1.to_a.class
p hash_1.to_a.to_h
hash_1 = {a: 10, b:23, c:3, d:100}
p hash_1.sort
p hash_1.sort.class
p hash_1.sort_by {|letter,num| num}
p hash_1.sort_by {|letter,num| num}.reverse
p hash_1.sort_by {|letter,num| num}.reverse.class
hash_1 = {a: 10, b:23, c:3, d:100}
p hash_1.key?(:a)
p hash_1.key?(:z)
p hash_1.value?(100)
p hash_1.value?(-10)

def calculate_total(price,tip,tax)
   tax_amount = price * tax
   tip_amount = price * tip
   price + tax_amount + tip_amount
end
puts calculate_total(24.99, 0.18, 0.07)
bill = {price: 24.99, tip: 0.18, tax: 0.07}
def calculate_total_2(info)
   tax_amount = info[:price] * info[:tax]
   tip_amount = info[:price] * info[:tip]
   info[:price] + tax_amount + tip_amount
end
p calculate_total_2(bill)

hash_1 = {a: 10, b:23, c:3, d:100}
p hash_1.delete(:c)
p hash_1

hash_1 = {a: 10, b:23, c:3, d:100}
result = hash_1.select {|let,val| val >= 20}
p result
result = hash_1.reject {|let,val| val >= 20}
p result

sentence = "Once upon a time in a land far far away"
def word_count(string)
  new_array = string.split(" ")
  new_hash = Hash.new(0)
  new_array.each do |key|
    val = new_array.count(key)
    new_hash[key] = val
  end
  p new_hash
end
word_count(sentence)
