#9
def find arr
  min = array.rindex(array.min)
  p arr[0..min-1]
end

#21
def find arr
  max = arr.index(arr.max)
  p arr[max+1..arr.length-1]
end

#33
def chech arr
  p arr.all?{ |i, j| i * j < 0}
end

#45
def sum arr, a, b
 p arr.select{|elem| elem >= a and elem <= b}.sum
end

#57
def find arr
  p arr.filter_map.with_index{|elem, index| elem if index == 0 or elem > arr[0..index-1].sum}
end
