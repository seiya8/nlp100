with open('col1.txt', 'w') as col1_f:
    with open('col2.txt', 'w') as col2_f:
      with open('popular-names.txt', 'r') as f:
          for line in f:
              col1, col2, *_ = line.split('\t')
              col1_f.write(col1 + '\n')
              col2_f.write(col2 + '\n')
