def file
  string = File.open('test.txt', 'r:UTF-8') {|file| file.read}
  s = string.split(' ').map(&:to_i)
  puts(print s)
end

file
