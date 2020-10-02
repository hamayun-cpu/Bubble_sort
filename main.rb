def bubble_sort(arr)
  size = arr.length
  i = 0
  while i < size - 1
    j = 0
    while j < ((size - 1) - i)

      arr[j], arr[j + 1] = arr [j + 1], arr[j] if arr[j] > arr[j + 1]

      j += 1
    end
    i += 1
  end
  arr
end

def bubble_sort_by(arr)
  size = arr.length
  i = 0
  while i < size - 1
    j = 0
    while j < size - 1
      ans = yield arr[j], arr[j + 1]
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if ans.positive?
      j += 1
    end
    i += 1
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])

p bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
