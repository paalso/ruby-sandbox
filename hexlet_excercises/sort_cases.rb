# frozen_string_literal: true

# https://ru.hexlet.io/courses/ruby-basics/lessons/arrays-methods/exercise_unit
# https://ru.hexlet.io/code_reviews/752084

require 'date'

def sort_cases entries
entries.sort_by do |entry|
  Date.parse entry[0]
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

sort_cases(data).each {|e| p e }

# ----- Teacher's solution -------------------------

# BEGIN
def sort_cases(data)
  sorted_cases = data.sort_by do |row|
    # destructuring example
    day, month, year = row.first.split('-')
    Time.new(year, month, day)
  end

  sorted_cases.reverse
end
# Без промежуточной переменной:
# def sort_cases(data)
#   data.sort_by do |row|
#     # destructuring example
#     day, month, year = row.first.split('-')
#     Time.new(year, month, day)
#     # it is possible to chain blocks
#   end.reverse
# end
# END
