text1 = 'パトカー'
text2 = 'タクシー'
puts text1.each_char.zip(text2.each_char).map { |s, t| s + t}.join
