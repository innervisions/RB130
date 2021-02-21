def select(array)
  result = []
  idx = 0
  while idx < array.size
    result << array[idx] if yield(array[idx])
    idx += 1
  end
  result
end

p select([1, 2, 3, 4, 5], &:odd?)
