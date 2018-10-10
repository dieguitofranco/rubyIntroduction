names = ["alejandro", "diego", "carlos"]

p names.join("!--!")
p ["h","e","l","l","o"].join

def custom_join (array, delimeter="")
    string= array.join(delimeter)
    return string
end

def custom_join_1 (array, delimeter="")
    string= ""
    last_index = (array.length)-1 
    array.each_with_index do |elem, index|
      string << elem
      string << delimeter unless index == last_index

      end
     string
end



p custom_join(names, "-")
p custom_join(names)
puts
p custom_join_1(names, "-")
p custom_join_1(names)
