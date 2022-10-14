module MyNumber
  def self.reverse_int number
    sgn = number <=> 0
    sgn * number.abs.to_s.reverse.to_i
  end
end
