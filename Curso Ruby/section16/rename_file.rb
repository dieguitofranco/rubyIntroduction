#File.rename("myFirstFile.txt", "somethingBetter.txt")
#File.delete("somethingBetter.txt")

if File.exist?("myFirstFile.txt")
  File.delete("myFirstFile.txt")
end
