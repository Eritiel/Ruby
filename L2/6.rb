#1.9. Найти элементы, расположенные перед последним минимальным
def find9 arr
  result = Array.new
  min = arr[0]
  index = 0
  for i in 1..arr.length-1
    if arr[i] <= min
      min = arr[i]
      result += arr[index..i-1]
      index = i
    end
  end
  p result
end

#1.21. Найти элементы, расположенные после первого максимального
def find21 arr
  result = Array.new
  max = arr[arr.length-1]
  index = arr.length-1
  for i in (1..arr.length-1).to_a.reverse
    if arr[i] >= max
      max = arr[i]
      result.insert(0, arr[i+1..index])
      index = i
    end
  end
  p result
end

#1.33. Проверка, чередуются ли в массиве положительные и отрицательные числа
def check33 arr
  for i in 0..arr.length-2
    if arr[i] * arr[i+1] > 0
      return false
    end
  end
  return true
end

#1.45. Найти сумму элементов, значение которых лежит в интервале a..b
def sum45 arr, a, b
  sum = 0
  for elem in arr
    if elem >= a and elem <= b
      sum += elem
    end
  end
  p sum
end

#1.57. Найти элементы, большие, чем сумма всех предыдущих элементов
def find57 arr
  result = Array.new
  sum = 0
  for elem in arr
    if elem > sum
      result.push(elem)
    end
    sum += elem
  end
  p result
end

puts "Введите количество элементов массива и сами элементы"
arr = Array.new(gets.to_i){gets.to_i}
answer = "1"
while answer != "0"
  puts "Введите номер задачи из списка:"
  answer = STDIN.gets.chomp.strip
  case answer
  when "9"
    find9 arr
  when "21"
    find21 arr
  when "33"
    p check33 arr
  when "45"
    print "Введите а = "
    a = STDIN.gets.chomp.strip.to_i
    print "Введите b = "
    b = STDIN.gets.chomp.strip.to_i
    sum45 arr, a, b
  when "57"
    find57 arr
  end
end
