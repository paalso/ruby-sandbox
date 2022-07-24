class StringAnalyzer
  def has_vowels?(str)
    !!(str =~ /[aeiou]+/i)
  end
end

# s1 = 'asvav'
# s2 = 'wwwww'

# sa = StringAnalyzer.new

# p sa.has_vowels? s1
# p sa.has_vowels? s2
