text = 'Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.'
words = text.gsub(',', '').gsub('.', '').split
len_word_arr = words.map { |word| word.length }
p len_word_arr
