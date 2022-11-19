# frozen_string_literal: true

VOCABULARY = 'nouns.txt'
MIN_WORD_LENGTH = 6
MAX_TRIES = 7
GREETING_PAUSE = 2
UPPER_MARGIN = 2
LEFT_MARGIN = 3

def cls
  system 'clear' or system 'cls'
  UPPER_MARGIN.times { puts }
end

def think_word
  words = File.readlines(VOCABULARY)
  words_number = words.size
  loop do
    word = words[rand(1..words_number)].chomp
    return word if word.size >= MIN_WORD_LENGTH && ([' ', '-'] & word.split('')).empty?
  end
end

def greet
  cls
  puts 'Сыграем в Виселицу?'
  puts "Я загадал слово. Попробуйте отгадать его за  #{MAX_TRIES} попыток"
  sleep GREETING_PAUSE
end

def print_word(word, guessed_letters)
  letters_to_print = []
  word.each_char do |c|
    letters_to_print.push((guessed_letters.include? c) ? c.upcase : '_')
  end
  puts letters_to_print.join(' ')
end

def read_letter
  $stdin.gets.chomp
end

def check_letter(next_letter, word, guessed_letters, error_letters)
  non_guessed_letters = word.split('').uniq - guessed_letters
  return :success if non_guessed_letters.include?(next_letter)
  if (guessed_letters | error_letters).include?(next_letter) |
     !'абвгдеёжзийклмнопрстуфхцчшщъыьэюя'.include?(next_letter)
    return nil
  end

  :fail
end

def reveal_letter; end

def redraw(word, guessed_letters, error_letters, errors_number)
  cls
  print_word(word, guessed_letters)
  puts
  print_status(error_letters, errors_number)
  print_gallows(errors_number)
  puts "\nВведите следующую букву"
end

def print_status(error_letters, errors_number)
  puts "Ошибки (#{error_letters.join(' ')}):"
  puts "У вас осталось #{MAX_TRIES - errors_number} попыток"
end

def print_final_message(game_result, word)
  puts
  case game_result
  when :win
    puts 'Поздравляем! Вы победили!'
  when :lose
    puts 'Увы, вы проиграли!'
    puts "Загаданное слово: #{word}"
  end
end

def gamer_won(word, guessed_letters)
  non_guessed_letters = word.split('').uniq - guessed_letters
  return true if non_guessed_letters.empty?

  false
end

def gamer_lose(errors_number)
  return true if errors_number == MAX_TRIES

  false
end

def print_gallows(errors_number)
  case errors_number
  when 0
    puts "
          _______
          |/
          |
          |
          |
          |
          |
          |
          |
        __|________
        |         |
        "
  when 1
    puts "
          _______
          |/
          |     ( )
          |
          |
          |
          |
          |
          |
        __|________
        |         |
        "
  when 2
    puts "
          _______
          |/
          |     ( )
          |      |
          |
          |
          |
          |
          |
        __|________
        |         |
        "
  when 3
    puts "
          _______
          |/
          |     ( )
          |      |_
          |        \\
          |
          |
          |
          |
        __|________
        |         |
        "
  when 4
    puts "
          _______
          |/
          |     ( )
          |     _|_
          |    /   \\
          |
          |
          |
          |
        __|________
        |         |
        "
  when 5
    puts "
          _______
          |/
          |     ( )
          |     _|_
          |    / | \\
          |      |
          |
          |
          |
        __|________
        |         |
        "

  when 6
    puts "
          _______
          |/
          |     ( )
          |     _|_
          |    / | \\
          |      |
          |     / \\
          |    /   \\
          |
        __|________
        |         |
        "
  when 7
    puts "
          _______
          |/     |
          |     (_)
          |     _|_
          |    / | \\
          |      |
          |     / \\
          |    /   \\
          |
        __|________
        |         |
        "

  end
end
