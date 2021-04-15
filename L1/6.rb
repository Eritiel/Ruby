number = gets.to_i
def sum_of_digits number
  sum = 0
  number.to_i.digits.map{ |digit| sum += digit }
  puts "Сумма цифр равняется #{sum}"
end

def mult_of_digits number
  mult = 1
  number.to_i.digits.map{ |digit| mult *= digit }
  puts "Произведение цифр равняется #{mult}"
end

def minDigit number
  number.digits.min
end

def maxDigit number
  number.digits.max
end

puts minDigit number
puts maxDigit number
puts mult_of_digits number
puts sum_of_digits number
