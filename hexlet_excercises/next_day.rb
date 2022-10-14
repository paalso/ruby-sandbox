require 'date'

def next_day
  today = (Date.today + 1).to_s
  y, m, d = today.split('-')
  Time.new(y, m, d)
end

# def next_day
#   today = Date.today
#   tomorrow = today.next
#   Time.new tomorrow.year, tomorrow.month, tomorrow.day
# end