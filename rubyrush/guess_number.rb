# frozen_string_literal: true

def read_int(prompt)
  puts prompt
  print '> '
  gets.to_i
end

puts 'Давайте сыграем в игру "Угадай число"'
max = read_int('Введите максимальное число для угадывания')

tries = Math.log2(max).to_i + 1

puts "Я загадал число в диапазоне 1..#{max}"
puts "Вы гарантированно можете отгадать это число не более, чем за #{tries} попыток\n"
puts "\nНачнем!\n"

secret_number = rand(max) + 1

counter = 0
game_failed = true
loop do
  counter += 1
  number = read_int("Попытка # #{counter}. Введите число:")

  break if counter == tries && number != secret_number

  if number > secret_number
    print 'Пока нет. '
    puts 'Мое число меньше'
  elsif number < secret_number
    print 'Пока нет. '
    puts 'Мое число больше'
  else

    game_failed = false
    break
  end
  break if counter == tries
end

if game_failed
  if game_failed
    puts "Я загадал число #{secret_number}, а вы дебил! не смогли угадать за целых #{tries} попыток. Ха-ха!"
  end
else
  puts "Ура, вы выиграли! За #{counter} попыток!"
end
