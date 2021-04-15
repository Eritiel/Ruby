#Вариант 9
# Метод 1. Найти максимальный простой делитель числа.
def isPrime number
  result = true
  for i in (2..(number/2)) do
    if number % i == 0
      result = false
    end
  end

  result
end

def maxPrime number
  maxDel = number
  for i in (1..number).to_a.reverse do
    if number % i == 0 and isPrime(i)
      maxDel = i
      break
    end
  end
  maxDel
end
