#3
def shuffle str
  p str.split().shuffle().join(" ")
end

#8
def count str
  p str.split().select{|word| word.length.even?}.count
end

#16
def sort str
  sample = ["белый", "синий", "красный"]
  p str.split.sort_by{|element| sample.index(element.downcase)}
end

# Для адекватной работы с кириллицей в консоли
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

answer = "1"
while answer != "0"
  puts "Введите номер задачи из списка:
	0 - Выход из программы
	1 - Перемешивание слов
	2 - Подсчет количества слов, состоящих из четного количеств символов
	3 - Сделает российский флаг"
  answer = STDIN.gets.chomp.strip
  case answer
  when "1"
    print "Введите исходную строку: "
    str = STDIN.gets.chomp
    shuffle str
  when "2"
    print "Введите исходную строку: "
    str = STDIN.gets.chomp
    count str
  when "3"
    print "Введите исходную строку: "
    str = STDIN.gets.chomp
    sort str
  end
end
