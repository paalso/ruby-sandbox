# frozen_string_literal: true

require './methods'

word = think_word
errors_number = 0
guessed_letters = []

greet

loop do
  redraw(word, guessed_letters, errors_number)
  next_letter = get_letter
  if check_letter
    reveal_letter
    break if gamer_won
  elsif gamer_lose
    break
  end
end
