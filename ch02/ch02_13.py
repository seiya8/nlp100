with open('./output/col1_col2.txt', 'w') as f:
    with open('col1.txt', 'r') as col1_f:
        with open('col2.txt', 'r') as col2_f:
            for col1, col2 in zip(col1_f, col2_f):
                f.write(col1.strip() + '\t' + col2)