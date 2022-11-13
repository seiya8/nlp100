text1 = 'パトカー'
text2 = 'タクシー'
puts text1.chars.zip(text2.chars).map { |s, t| s + t }.join
