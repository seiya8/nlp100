def word_ngram(text, n):
    words = text.split()
    return [words[i:i+n] for i in range(len(words)-n+1)]

def letter_ngram(text, n):
    return [text[i:i+n] for i in range(len(text)-n+1)]

if __name__ == '__main__':
    text = 'I am an NLPer'
    print(word_ngram(text, 2))
    print(letter_ngram(text, 2))
