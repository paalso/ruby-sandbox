# frozen_string_literal: true

def reverse_array array
  reversed = []
  (array.length - 1).downto(0) { |i| reversed << array[i] }
  reversed
end

array1 = []
puts reverse_array(array1)
puts reverse_array(array1) == []

array2 = [1, 2, 3, 4, 5, 6, 7]
puts reverse_array(array2) == [7, 6, 5, 4, 3, 2, 1]
