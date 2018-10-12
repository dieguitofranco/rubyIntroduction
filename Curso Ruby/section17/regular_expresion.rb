phrase = "Ruby Programming Languages is amazing"
puts phrase.start_with?("Rub")
puts phrase.upcase.start_with?("RUBY")
puts phrase.end_with?("ing")

def custom_start(string,word)
 string[0, word.length] == word
end
p custom_start(phrase,"Rub")

def custom_end(string,word)
    string[-word.length..-1] == word
 end
p custom_end(phrase,"ing")

phrase = "Ruby Programming Languages is amazing"
puts phrase.include?("by")

voicemail = "I can be acept at 3127921062"
p voicemail.scan(/[er]/)
p voicemail.scan(/\d/)
p voicemail.scan(/\d+/)
puts voicemail.scan(/./)

poem = "99 bottles of beer pf the wall, 99 bottles of beer"
p poem.scan(/\A\d+/)

sales = "I bought 9 apples, 26 bananas, and 4 oranges at the store."
p sales.scan(/[^aeiouAEIOU,\s\d]/)
