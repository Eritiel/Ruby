def find arr
  min = array.rindex(array.min)
  return arr[0..min-1]
end

def find arr
  max = arr.index(arr.max)
  return arr[max+1..arr.length-1]
end

