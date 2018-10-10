sentence = "hi, my name is diego franco. there are spaces here!"

p sentence.split(" ")
p sentence.split(".")
p sentence.split(",")

words = sentence.split(" ")
words.each{ |word| puts word.length  }
