puts "Введите числа через пробел: "
arr = STDIN.gets.split(' ').map(&:to_i)

puts "Максимум: #{arr.max}"
