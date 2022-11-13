def typoglycemia(text)
  result = []
  text.split.each do |word|
    if word.length < 5
      result.append(word)
    else
      result.append(word[0] + word[1..-2].chars.sample(word.length-2).join + word[-1])
    end
  end
  result.join(' ')
end

text = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."
puts typoglycemia(text)
