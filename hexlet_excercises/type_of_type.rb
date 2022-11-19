# frozen_string_literal: true

# Типы данных в Ruby

# Реализуйте функцию type_of_type(value), которая определяет,
# является ли тип данных составным, и возвращает символ :complex,
# если да, и :simple — если нет.
# Составным считаются только три типа: Hash, Array и Range.
# Остальные — простые.

def type_of_type(value)
  # puts(value.class, [Hash, Array, Range].include?(value.class))
  return :complex if [Hash, Array, Range].include? value.class
  :simple
end

puts type_of_type({}) # :complex
puts type_of_type('') # :simple
