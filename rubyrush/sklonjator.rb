# frozen_string_literal: true

def sklonenie(number, krokodil, krokodila, krokodilov)
  return krokodilov if (number % 100).between?(11, 14)
  return krokodila if (number % 10).between?(2, 4)
  return krokodil if number % 10 == 1

  krokodilov
end

# Авторская версия: https://rubyrush.ru/steps/methods
# работает некорректно
def sklonenie1(number, krokodil, krokodila, krokodilov)
  ostatok = number % 10
  return krokodil if ostatok == 1

  return krokodila if ostatok >= 2 && ostatok <= 4

  return krokodilov if ostatok >= 5 && ostatok <= 9 || ostatok.zero?
end

(0..30).each do |n|
  puts "#{n} #{sklonenie(n, 'крокодил', 'крокодила',
                         'крокодилов')} #{sklonenie1(n, 'крокодил', 'крокодила', 'крокодилов')}"
end

# (0..30).each do |n|
#   puts "#{n} #{sklonenie(n, 'негритёнок', 'негритёнка', 'негритят')} " \
#        "#{sklonenie(n, 'пошел', 'пошли', 'пошли')} купаться в море!"
# end
