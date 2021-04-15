number = gets.to_i
sum = 0
number.to_i.digits.map{ |digit| sum += digit }
puts "Сумма цифр равняется #{sum}"
