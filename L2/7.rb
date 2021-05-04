#9
def find9 arr
  min = array.rindex(array.min)
  p arr[0..min-1]
end

#21
def find21 arr
  max = arr.index(arr.max)
  p arr[max+1..arr.length-1]
end

#33
def check33 arr
  p arr.all?{ |i, j| i * j < 0}
end

#45
def sum45 arr, a, b
  p arr.select{|elem| elem >= a and elem <= b}.sum
end

#57
def find57 arr
  p arr.filter_map.with_index{|elem, index| elem if index == 0 or elem > arr[0..index-1].sum}
end

puts "Введите количество элементов массива и сами элементы"
arr = Array.new(gets.to_i){gets.to_i}
answer = "1"
while answer != "0"
  puts "Введите номер задачи: "
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
