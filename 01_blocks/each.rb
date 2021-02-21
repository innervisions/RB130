def each(array)
  idx = 0
  while idx < array.size
    yield(array[idx])
    idx += 1
  end
  array
end

each([1, 5, 'hello', 'guy']) { |el| puts el }
