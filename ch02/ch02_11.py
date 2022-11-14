with open('ch02_11_output.txt', 'w') as output_f:
    with open('popular-names.txt', 'r') as input_f:
        for line in input_f:
            output_f.write(line.replace('\t', ' '))
