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
