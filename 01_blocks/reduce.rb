def reduce(array, accumulator = array[0])
  idx = accumulator.equal?(array[0]) ? 1 : 0
  while idx < array.size
    accumulator = yield(accumulator, array[idx])
    idx += 1
  end
  accumulator
end

p reduce(['a', 'b', 'c']) { |acc, value| acc + value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']
p reduce(['a', 'b', 'c'], 'lp') { |acc, value| acc + value }
