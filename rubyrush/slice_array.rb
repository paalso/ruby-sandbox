# frozen_string_literal: true

MAX_SIZE = 11

def read_int(prompt)
  puts prompt
  print '> '
  $stdin.gets.to_i
end

def slice_array(array, size=1)
  slice = []
  (0...size).each do |i|
    break if i == array.size
    slice << array[i]
  end
  slice
end

array = (1..MAX_SIZE).to_a
puts "Вот какая палка колбасы у нас есть: #{array}"

slice_size = read_int('Сколько первых элементов вам отрезать?')

puts "Вот ваша колбаса: #{slice_array(array, slice_size)}"
