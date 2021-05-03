def input n
  puts "Введите элементы массива: "
  array = Array.new(n){gets.to_i}
  p array
  array
end

n = input 3
