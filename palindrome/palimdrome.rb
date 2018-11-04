def palimdrome?(str)
  raise ArgumentError.new('Inputted is not String') unless str.is_a?(String)

  (0..(str.length / 2)).each{ |idx| return false if str[idx] != str[- idx - 1] }

  true
end
