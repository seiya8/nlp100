File.open('col1.txt', 'w') do |col1_line|
  File.open('col2.txt', 'w') do |col2_line|
    File.foreach('popular-names.txt') do |in_line|
      col1, col2, _ = in_line.split(/\t/)
      col1_line.puts(col1)
      col2_line.puts(col2)
    end
  end
end
