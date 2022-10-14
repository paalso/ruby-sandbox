counter = 0
while true do
  counter += 1
  n = rand(1000)
  raise n.inspect if (n % 100).zero?
  break if n == 666   
end
puts "Total #{counter} iterations passed"
