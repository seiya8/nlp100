text = 'Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can.'
words = text.replace('.', '').split()
head1idxes = (1, 5, 6, 7, 8, 9, 15, 16, 19)
symb2idx = {}
for i, word in enumerate(words):
    symb = word[0] if i+1 in head1idxes else word[:2]
    symb2idx[symb] = i+1
print(symb2idx)
