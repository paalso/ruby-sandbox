# frozen_string_literal: true

def read_int(prompt)
  puts prompt
  print '> '
  gets.to_i
end

def input_int_with_check(allowed_symbols, prompt)
  loop do
    input = read_int(prompt)
    return input if allowed_symbols.include? input

    puts 'Неправильный ввод. Попробуйте еще'
  end
end

x = input_int_with_check([2, 3, 5, 7, 11, 13, 17, 19], 'Введите простое число до 20')
puts "Вы ввели #{x}"
