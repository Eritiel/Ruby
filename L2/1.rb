def min arr
  min = Float::INFINITY
  for i in arr
    if i < min
      min = i
    end
  end
  puts "Минимальный элемент: #{min}"
end

def max arr
  max = -Float::INFINITY
  for i in arr
    if i > max
      max = i
    end
  end
  puts "Максимальный элемент: #{max}"
end

def sum arr
  sum = 0
  for i in arr
    sum += i
  end
  puts "Сумма элементов: #{sum}"
end

def mult arr
  m = 1
  for i in arr
    m *= i
  end
  puts "Произведение элементов: #{m}"
end

puts "Введите количество элементов массива и сами элементы"
array=Array.new(gets.to_i){gets.to_i}
min array
max array
sum array
mult array
