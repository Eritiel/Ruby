def min arr
  puts "Минимальный элемент: #{arr.min}"
end

def max arr
  puts "Максимальный элемент: #{arr.max}"
end

def sum arr
  puts "Сумма элементов: #{arr.sum}"
end

def mult arr
  m = 1
  arr.each {|i| m *= i}
  puts "Произведение элементов: #{m}"
end

puts "Введите количество элементов массива и сами элементы"
array = Array.new(gets.to_i){gets.to_i}
min array
max array
sum array
mult array
