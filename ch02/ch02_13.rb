File.open('./output/col1_col2.txt', 'w') do |out_line|
  File.foreach('col1.txt').zip(File.foreach('col2.txt')) do |col1_line, col2_line|
    out_line << [col1_line.strip, col2_line].join('\t')
  end
end
