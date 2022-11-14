n = int(input())
with open('popular-names.txt', 'r') as f:
    for i, line in enumerate(f):
        if i >= n:
            break
        print(line.strip())