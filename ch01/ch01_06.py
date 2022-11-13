from ch01_05 import letter_ngram
X = set(letter_ngram('paraparaparadise', 2))
Y = set(letter_ngram('paragraph', 2))
print(X | Y)
print(X & Y)
print(X - Y)
print('se' in X)
print('se' in Y)
