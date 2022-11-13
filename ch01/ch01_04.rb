text = 'Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can.'
words = text.gsub('.', '').split
head1idxes = [1, 5, 6, 7, 8, 9, 15, 16, 19]
symb2idx = {}
words.each_with_index do |word, i|
  symb = head1idxes.include?(i+1) ? word[0] : word[0..1]
  symb2idx[symb] = i+1
end
p symb2idx
