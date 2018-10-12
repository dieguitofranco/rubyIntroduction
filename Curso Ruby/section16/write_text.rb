File.open("myFirstFile.txt","a") do |file|
  file.puts "this will be appened to the end"
  file.print "and no more line with file.printAnd another"
  file.write "other line"
end
