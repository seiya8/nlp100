def cipher(text)
  text.chars.map { |s| s.ord.between?(97, 122) ? (219-s.ord).chr : s}.join
end

text = 'Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.'
puts cipher(text)
