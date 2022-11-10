# frozen_string_literal: true

def calculate_to_another_currecy(current_currency,
                                 new_currency,
                                 current_value,
                                 exchange_rate_usd,
                                 exchange_rate_euro)
  if current_currency == 'рубль'
    return current_value / exchange_rate_usd if new_currency == 'доллар'
    return current_value / exchange_rate_euro if new_currency == 'евро'
  end
  if new_currency == 'рубль'
    return current_value * exchange_rate_usd if current_currency == 'доллар'
    return current_value * exchange_rate_euro if current_currency == 'евро'
  end
  return current_value * exchange_rate_usd / exchange_rate_euro if current_currency == 'доллар'
  return current_value * exchange_rate_euro / exchange_rate_usd if current_currency == 'евро'
end

CURRENCIES = { 1 => %w[рубль рублей],
               2 => %w[доллар долларов],
               3 => %w[евро евро] }.freeze

puts 'Какая у вас на руках валюта?'
puts '  1. Рубли'
puts '  2. Доллары'
puts '  3. Евро'
print '> '
currency_choice = gets.to_i
current_currency = CURRENCIES[currency_choice][0]

puts "Сколько у вас #{CURRENCIES[currency_choice][1]}?"
print '> '
current_amount = gets.to_f

puts 'Сколько сейчас стоит 1 доллар?'
print '> '
exchange_rate_usd = gets.to_f

puts 'Сколько сейчас стоит 1 евро?'
print '> '
exchange_rate_euro = gets.to_f

puts 'Ваши запасы на сегодня равны:'
line = 0
currencies_to_exchange_to = CURRENCIES.keys - [currency_choice]
currencies_to_exchange_to.each do |currency|
  new_currency = CURRENCIES[currency][0]
  new_value = calculate_to_another_currecy(
    current_currency,
    new_currency,
    current_amount,
    exchange_rate_usd,
    exchange_rate_euro
  ).round(2)
  line += 1
  subfix = line == 1 ? ' или' : ''
  puts "#{new_value} #{CURRENCIES[currency][1]}#{subfix}"
end
