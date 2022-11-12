# frozen_string_literal: true

def read_int(prompt)
  puts prompt
  print '> '
  gets.to_i
end

n = read_int 'Введите N'
s = n * (n + 1) / 2
# print (1..n).to_a
puts "[#{(1..n).to_a.join(', ')}]"
puts "\nСумма чисел: #{s}"
