require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store = Store.create(name: "surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store = Store.create(name: "whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store = Store.create(name: 'yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
puts "--- Men's Stores ---"
@mens_stores.each do |store|
  puts "name: #{store.name}, annual revenue: #{store.annual_revenue}"
end

@womens_stores_under_1mil = Store.where('annual_revenue < 1000000', womens_apparel: true)
puts "--- women's stores with an annual revenue under 1 million --"
@womens_stores_under_1mil.each do |store|
  puts "name: #{store.name}, annual revenue: #{store.annual_revenue}"
end