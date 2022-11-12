# frozen_string_literal: true

MIN_RAND = 0
MAX_RAND = 100

def read_int(prompt)
  puts prompt
  print '> '
  gets.to_i
end

def fill_random_int_array(size, min, max)
  rnd = Random.new
  array = []
  size.times { array << rnd.rand(min..max) }
  array
end

def max_in_array(array)
  return if array.empty?

  max = array[0]
  array.each do |e|
    max = e if e > max
  end
  max
end

size = read_int 'Какой длины будет массив случайных чисел?'
array = fill_random_int_array(size, MIN_RAND, MAX_RAND)
print array
puts "\nСамое большое число:\n#{max_in_array(array)}"
