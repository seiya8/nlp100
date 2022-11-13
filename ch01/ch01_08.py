def cipher(text):
  return ''.join([chr(219-ord(s)) if 97 <= ord(s) <= 122 else s for s in text])

text = 'Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.'
print(cipher(text))
