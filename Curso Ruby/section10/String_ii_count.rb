puts "Hello word".count("wl")

puts "An amazin aardark appeared".count("Aa")

def custom_count(string, search_characters)
  count =0
  string.each_char do |char|
    if search_characters.include?(char)
      count+=1
    end
  end
  count
end

puts (custom_count("An amazin aardark appeared","a"))

# fact

fact = "i am very handsome"

p fact.index("a", 3)

def custom_index(string, substring)
    return nil unless (string.include?(substring))
    length = substring.length
    string.chars.each_with_index do |char, index|
      sequence = string[index, length]
      return index if  sequence == substring
    end
end

p custom_index(fact, "i")
p custom_index(fact, "h")
p custom_index(fact, "z")
p custom_index(fact, "am")

fact = "I am very handsome"
p fact.index("e")
p fact.rindex("e")

h = "Heelloo myy nammee iss    DIIIIEGO "
p h.squeeze
