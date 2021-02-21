def times(num)
  idx = 0
  while idx < num
    yield(idx)
    idx += 1
  end
  num
end

times(4) { puts 'hello' }
times(5) { |num| puts num }
