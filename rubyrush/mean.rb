# frozen_string_literal: true

def try_round(x)
  return x.to_i if x == x.to_i

  x
end

print "Сколько числел нужно обработать:\n> "
counter = gets.to_i

s = 0.0
(1..counter).each do |i|
  print "Введите число #{i}:\n > "
  x = gets.to_f
  s += x
end
mean = s / counter
print "\nСреднее арифметическое: #{try_round(mean)}\n"
