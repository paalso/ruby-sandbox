# frozen_string_literal: true

# Все есть выражение

# Реализуйте функцию invert_case(), которая меняет в строке
# регистр каждой буквы на противоположный.

def invert_case(text)
  text.split('').map(&:swapcase).join
end

puts invert_case('Hello, World!'); # hELLO, wORLD!
puts invert_case('I loVe JS');     # i LOvE js
