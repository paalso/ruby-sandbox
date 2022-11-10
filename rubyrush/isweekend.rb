# frozen_string_literal: true

if [0, 6].include? Time.now.wday
  puts 'Сегодня выходной!'
else
  puts 'Сегодня будний день, за работу!'
end
