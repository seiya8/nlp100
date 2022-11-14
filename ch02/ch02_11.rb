File.open('./output/ch02_11_rb.txt', 'w') do |output_line|
  File.foreach('popular-names.txt') do |input_line|
    output_line << input_line.gsub(/\t/, ' ')
  end
end