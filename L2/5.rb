def input n
  puts "Введите элементы массива: "
  array = Array.new(n){gets.to_i}
  p array
  array
end

def file
  string = File.open('test.txt', 'r:UTF-8') {|file| file.read}
  s = string.split(' ').map { |x| x.to_i }
  p s
end

def select n, path
  case n
  when 1
    puts "Введите количество элементов массива: "
    size = gets.to_i
    input size
  when 2
    file
  end
end

select 1,'test.txt'
select 2,'test.txt'
