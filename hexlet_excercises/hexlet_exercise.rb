def sort_cases(data)
  data.sort_by do |entry|
    d, m, y = entry[0].split('-')
    Time.new(y, m, d)
  end.reverse
end


data = [
  ['11-9-2020', 'russia', 10_000],
  ['11-10-2020', 'usa', 35_000],
  ['13-12-2020', 'india', 55_000],
  ['12-11-2020', 'russia', 13_000],
  ['12-12-2020', 'usa', 22_000],
  ['11-12-2020', 'india', 54_000],
]


sorted_data = sort_cases(data)
sorted_data.each {|e| print "#{e}\n"}

