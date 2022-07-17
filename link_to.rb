# frozen_string_literal: true

# Реализуйте функцию link_to(), которая генерирует html-ссылки. Функция принимает
# на вход три параметра:
# Текст ссылки
# Сама ссылка
# Хеш с атрибутами (не обязательный)

def link_to(text, url, attrs = nil)
  link_token = "href=\"#{url}\""
  attrs_token = ''
  if attrs
    attr_tokens = attrs.map { |key, val| "#{key}=\"#{val}\"" } if attrs
    attrs_token = " #{attr_tokens.join(' ')}"
  end
  "<a #{link_token}#{attrs_token}>#{text}</a>"
end

puts link_to 'name', '/url'
# <a href="/url">name</a>

puts link_to 'name', '/url', class: 'link'
# <a href="/url" class="link">name</a>

puts link_to 'name', '/url', { class: 'link' }
# <a href="/url" class="link">name</a>

puts link_to 'name', '/url', class: 'link', attr: 'some attribute'
# <a href="/url" class="link" attr="some attribute">name</a>



# BEGIN
def link_to(name, link, attributes = {})
  attr_pairs = attributes.any? ? [''] : []
  attributes.each do |key, value|
    attr_pairs << "#{key}=\"#{value}\""
  end
  attr_line = attr_pairs.join(' ')
  "<a href=\"#{link}\"#{attr_line}>#{name}</a>"
end
# END
