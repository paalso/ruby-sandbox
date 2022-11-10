# frozen_string_literal: true

SHAPES = {
  '0' => 'камень',
  '1' => 'ножницы',
  '2' => 'бумага'
}.freeze

def read(prompt)
  puts prompt
  print '> '
  gets.chomp
end

def get_winner(result1, result2)
  return 'comp' if result1 == '0' && result2 == '1'
  return 'gamer' if result1 == '0' && result2 == '2'
  return 'gamer' if result1 == '1' && result2 == '0'
  return 'comp' if result1 == '1' && result2 == '2'
  return 'comp' if result1 == '2' && result2 == '0'
  return 'gamer' if result1 == '2' && result2 == '1'
end

puts 'Предлагаю сыграть в Камень — Ножницы — Бумага'
puts "Начали!\n"

comps_score = 0
gamers_score = 0

choise_options = SHAPES.to_a.map { |e| e.join(' - ') }.join(', ')
choise_options += ' ,Q - выход'

loop do
  gamers_choice = read("\nВведите вариант: #{choise_options}")

  if gamers_choice.upcase == 'Q'
    puts 'До свидания!'
    break
  end

  puts "Вы выбрали: #{SHAPES[gamers_choice]}"

  comps_choice = rand(SHAPES.size).to_s
  puts "Компьютер выбрал: #{SHAPES[comps_choice]}"

  winner = get_winner(comps_choice, gamers_choice)

  if winner == 'comp'
    puts 'Победил Компьютер'
    comps_score += 1
  elsif winner == 'gamer'
    puts 'Вы победили'
    gamers_score += 1
  else
    puts 'Ничья'
  end
end

puts "\nИтоговый счет"
puts "Компьютер: #{comps_score}"
puts "Вы:        #{gamers_score}"

if comps_score > gamers_score
  puts 'Компьютер молодец, а вы - лошара!'
elsif comps_score < gamers_score
  puts 'Компьютер лошара, а вы - молодец!'
else
  puts 'Оба хороши!'
end
