File.open('col1.txt', 'w') do |col1_f|
  File.open('col2.txt', 'w') do |col2_f|
    File.foreach('popular-names.txt') do |line|
      col1, col2, _ = line.split(/\t/)
      col1_f.puts(col1)
      col2_f.puts(col2)
    end
  end
end