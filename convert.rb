# frozen_string_literal: true

def convert(data)
  data.map { |(lang, _, strengh)| [lang, strengh] }
end

data = [
  %w[ruby dynamic strong],
  %w[js dynamic weak],
  %w[c static weak],
  %w[kotlin static strong]
]

result = convert(data)

print result
# [
#   ['ruby', 'strong'],
#   ['js', 'weak'],
#   ['c', 'weak'],
#   ['kotlin', 'strong']
# ]
