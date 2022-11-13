def word_ngram(text, n)
  words = text.split
  (0..words.length-n).map { |i| words[i..i+n-1] }
end

def letter_ngram(text, n)
  (0..text.length-n).map { |i| text[i..i+n-1] }
end

if $0 == __FILE__
  text = 'I am an NLPer'
  p word_ngram(text, 2)
  p letter_ngram(text, 2)
end
