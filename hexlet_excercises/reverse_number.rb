# frozen_string_literal: true

require_relative 'my_number'

numbers = [12_345, -98_745]
numbers.each do |n|
  reversed_number = MyNumber.reverse_int(n)
  puts "Исходное число: #{n}, перевернутое число: #{reversed_number}"
end
