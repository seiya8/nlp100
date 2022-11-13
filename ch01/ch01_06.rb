require 'set'
require_relative './ch01_05'

X = Set.new(letter_ngram('paraparaparadise', 2))
Y = Set.new(letter_ngram('paragraph', 2))
p X + Y
p X & Y
p X - Y
puts X.include?('se')
puts Y.include?('se')
