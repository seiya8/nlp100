row_cnt = 0
with open('popular-names.txt', 'r') as f:
    for line in f:
      row_cnt += 1
print(row_cnt)
