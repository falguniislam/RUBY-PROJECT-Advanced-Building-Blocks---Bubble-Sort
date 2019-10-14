# rubocop:disable Style/WordArray
def bubble_sort_by(array)
  not_sorted = true, n = array.length - 1
  while not_sorted
    not_sorted = false
    (0...n).each do |i|
      next unless yield(array[i], array[i + 1]) > 0

      array[i], array[i + 1] = array[i + 1], array[i], not_sorted = true
    end
    n -= 1
  end
  array
end

array = ['hi', 'hello', 'hey']
bubble_sort_by(array) do |left, right|
  left.length <=> right.length
end
p array

#=> ["hi", "hey", "hello"]

# rubocop:enable Style/WordArray