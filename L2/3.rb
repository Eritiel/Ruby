def input n
  puts "Введите элементы массива: "
  array = Array.new(n){gets.to_i}
  p array
  array
end

def add_1 array
  puts "Введите новый элемент: "
  p array << gets.to_i
end

def add_2 array
  p array += [5]
end

def add_3 array
  p array.push(6)
end

def add_4 array
  p array.unshift(7)
end

def add_5 array
  p  array.insert(3,4)
end

n = input 3
add_1 n
add_2 n
add_3 n
add_4 n
add_5 n
