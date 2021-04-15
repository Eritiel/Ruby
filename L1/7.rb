# Вариант 9
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

# Метод 2. Найти произведение цифр числа, не делящихся на 5.
def isntFive number
  mult = 1
  number.digits.map{ |digit| mult *= digit if digit % 5 != 0 }
  mult
end

# Метод 3. Найти  НОД максимального нечетного непростого делителя числа и прозведения цифр данного числа.
def mult_of_digits number
  mult = 1
  number.to_i.digits.map{ |digit| mult *= digit }
  mult
end

def isPrime number
  result = true
  for i in (2..(number/2)) do
    if number % i == 0
      result = false
    end
  end

  result
end

def maxnotPrime number
  maxDel = 1
  for i in (1..number).to_a.reverse do
    if number % i == 0 and not isPrime(i) and i.odd?
      maxDel = i
      break
    end
  end
  maxDel
end

def NOD num1, num2
  while num1 != num2
    if num1 > num2
      num1 -= num2
    else
      num2 -= num1
    end
  end
  num1
end

def method3 number
  maxDel = maxnotPrime number
  mult = mult_of_digits number
  puts NOD maxDel, mult
end

puts method3 number
