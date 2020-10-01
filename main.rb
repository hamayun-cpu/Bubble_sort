def bubble_sort(arr)
  size = arr.length
  i=0
  while i<size-1 do
    j=0
    while j<((size-1)-i)
      if arr[j]>arr[j+1]
        arr[j],arr[j+1]=arr[j+1],arr[j]
      end
      j=j+1
    end
    i=i+1
  end
  return arr
end

def bubble_sort_by(arr)
  size = arr.length
  i=0
  while i < size-1 do
    j=0
    while j < size-1 do
      ans =yield arr[j],arr[j+1]
      if ans > 0
        arr[j],arr[j+1]=arr[j+1],arr[j]
      end
      j=j+1
    end
    i=i+1
  end
  arr
end

p bubble_sort([4,3,78,2,0,2])

p bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length }
