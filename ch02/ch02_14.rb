n = gets.to_i
File.open('popular-names.txt').each_with_index do |line, i|
  break if i >= n
  puts line.strip()
end