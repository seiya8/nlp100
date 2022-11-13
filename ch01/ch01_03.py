text = 'Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.'
words = text.replace(',', '').replace('.', '').split()
len_word_list = list(map(len, words))
print(len_word_list)
