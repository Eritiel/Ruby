def readFromFile(filePath)
  file = File.new(filePath, "r:UTF-8")
  return file.readlines
end

lines = readFromFile(STDIN.gets.chomp)

puts(lines.sort_by {|line| line.split.select {|w1, w2| not w1.scan(/\d+/).empty?}.count})
