#1.9. Найти элементы, расположенные перед последним минимальным
def find arr
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
  return result
end

#1.21. Найти элементы, расположенные после первого максимального
def find arr
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
  return result
end

#1.33. Проверка, чередуются ли в массиве положительные и отрицательные числа
def chech arr
  for i in 0..arr.length-2
    if arr[i] * arr[i+1] > 0
      return false
    end
  end
  return true
end

#1.45. Найти сумму элементов, значение которых лежит в интервале a..b
def sum arr, a, b
  sum = 0
  for elem in arr
    if elem >= a and elem <= b
      sum += elem
    end
  end
  return sum
end

#1.57. Найти элементы, большие, чем сумма всех предыдущих элементов
def find arr
  result = Array.new
  sum = 0
  for elem in arr
    if elem > sum
      result.push(elem)
    end
    sum += elem
  end
  return result
end
