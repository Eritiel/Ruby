puts "Введите свой любимый язык программирования"
name=gets.chomp()
if name=="Ruby"
    puts "Иу, подлиза"
elsif name=="Python"
  puts "А ты мне нравишься"
elsif name=="R"
  puts "Согласна!"
elsif name=="C++"
  puts "Плюсики в карму"
elsif name=="C#"
  puts "Минус в карму, даже руби лучше"
elsif name=="Petooh"
  puts "Ваши вкусы очень специфичны..."
else puts "Хм, я такого даже не знаю. Ну ладно"
end

#или

puts "Введите свой любимый язык программирования"
name=gets.chomp()
case name
when "Ruby"
  puts "Иу, подлиза"
when "Python"
  puts "А ты мне нравишься"
when "R"
  puts "Согласна!"
when "C++"
  puts "Плюсики в карму"
when "C#"
  puts "Минус в карму, даже руби лучше"
when "Petooh"
  puts "Ваши вкусы очень специфичны..."
else puts "Хм, я такого даже не знаю. Ну ладно"
end
