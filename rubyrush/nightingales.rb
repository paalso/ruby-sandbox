# frozen_string_literal: true

SEASONS = %w[весна лето осень зима].freeze

def read_int(prompt)
  puts prompt
  print '> '
  $stdin.gets.to_i
end

if ARGV.size == 2
  temperature, season_code = ARGV.map(&:to_i)
else
  temperature = read_int('Какая сейчас температура?')
  season_code = read_int('Какое время года? (1 - весна, 2 - лето, 3 - осень, 4 - зима)')
end

season = SEASONS[season_code - 1]

if season == 'лето' && temperature.between?(15, 35) || temperature.between?(22, 30)
  puts 'Скорее идите в парк, соловьи поют!'
else
  puts 'Сейчас соловьи молчат, греются или прохлаждаются :)'
end
