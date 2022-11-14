row_cnt = 0
File.foreach('popular-names.txt') do |line|
  row_cnt += 1
end
puts row_cnt
