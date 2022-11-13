text = 'パタトクカシーー'
puts text.each_char.each_slice(2).map { |_, s| s }.join
