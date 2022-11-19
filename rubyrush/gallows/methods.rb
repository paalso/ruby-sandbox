# frozen_string_literal: true

VOCABULARY = 'nouns.txt'
MIN_WORD_LENGTH = 6
MAX_TRIES = 7
GREETING_PAUSE = 2
UPPER_MARGIN = 3
LEFT_MARGIN = 3

def cls
  system 'clear' or system 'cls'
  UPPER_MARGIN.times { puts }
end

def think_word
  words = File.readlines(VOCABULARY)
  words_number = words.size
  loop do
    word = words[rand(1..words_number)]
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
  # puts "#{LEFT_MARGIN * ' '}letters_to_print.join(' ')"
  puts letters_to_print.join(' ')
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

def get_letter; end

def check_letter; end

def reveal_letter; end

def redraw(word, guessed_letters, errors_number)
  cls
  print_word(word, guessed_letters)
  puts
  print_gallows(errors_number)
end

def gamer_won; end

def gamer_lose; end
