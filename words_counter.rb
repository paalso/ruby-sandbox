# frozen_string_literal: true

def get_words_count_by_lang(text)
  words_counter = {}
  text.split.each do |word|
    words_counter[word] = words_counter.fetch(word, 0) + 1
  end
  words_counter
end

text = 'php ruby php java javascript go go go'

print get_words_count_by_lang text
# {
#   php: 2,
#   ruby: 1,
#   java: 1,
#   javascript: 1,
#   go: 3
# }
