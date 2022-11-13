text = 'パタトクカシーー'
puts text.chars.each_slice(2).map { |_, s| s }.join
