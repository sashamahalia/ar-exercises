require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "total annual revenue: $#{Store.sum(:annual_revenue)}"
puts "average annual revenue: $#{Store.average(:annual_revenue)}"
puts "number of stores with annual revenue over a million: #{Store.where('annual_revenue < 1000000').size}"
