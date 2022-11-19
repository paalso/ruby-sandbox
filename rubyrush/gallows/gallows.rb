# frozen_string_literal: true

require './methods'

word = think_word
errors_number = 0
guessed_letters = []
error_letters = []
gamer_result = nil

greet

loop do
  redraw(word, guessed_letters, error_letters, errors_number)
  next_letter = read_letter
  check_letter_result = check_letter(next_letter, word, guessed_letters, error_letters)
  case check_letter_result
  when :success
    guessed_letters << next_letter
    if gamer_won(word, guessed_letters)
      gamer_result = :win
      redraw(word, guessed_letters, error_letters, errors_number)
      break
    end
  when :fail
    error_letters << next_letter
    errors_number += 1
    if gamer_lose(errors_number)
      gamer_result = :lose
      break
    end
  end
end

print_final_message(gamer_result, word)
