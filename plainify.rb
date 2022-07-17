# frozen_string_literal: true

def plainify(data)
  plainified = []
  data.each_pair do |group, songs|
    songs.each { |song| plainified.push({ band: group, song: song }) }
  end
  plainified
end

# The Ruby Way
# def plainified data
#   data.keys.flat_map do |band_name|
#     data[band_name].map { |song_name| { band: band_name, song: song_name } }
#   end
# end

data = {
  'Queen' => [
    'Bohemian Rhapsody',
    "Don't Stop Me Now"
  ],
  'Metallica' => [
    'Nothing Else Matters'
  ],
  "Guns N' Roses" => [
    'Paradise City',
    'November Rain'
  ],
  'AC/DC' => [
    'Thunderstruck',
    'Back In Black',
    'Shoot to Thrill'
  ]
}

puts plainify data

# [
#   { band: 'Queen', song: 'Bohemian Rhapsody' },
#   { band: 'Queen', song: "Don't Stop Me Now" },
#   { band: 'Metallica', song: 'Nothing Else Matters' },
#   { band: "Guns N' Roses", song: 'Paradise City' },
#   { band: "Guns N' Roses", song: 'November Rain' },
#   { band: 'AC/DC', song: 'Thunderstruck' },
#   { band: 'AC/DC', song: 'Back In Black' },
#   { band: 'AC/DC', song: 'Shoot to Thrill' }
# ]
