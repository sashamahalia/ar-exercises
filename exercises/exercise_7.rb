require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store_id, presence: true
  validates_numericality_of :hourly_rate, less_than: 100
  validates_numericality_of :hourly_rate, greater_than: 40
end

#test code
# puts @store1.employees.create(first_name: "Billy", last_name: "Woods", hourly_rate: 70).valid?
# # puts @store1.employees.create(first_name: "", last_name: "", hourly_rate: 70).valid?
# puts @store1.employees.create(first_name: "Billy", last_name: "Woods", hourly_rate: 30).valid?
# puts @store1.employees.create(first_name: "Billy", last_name: "Woods", hourly_rate: 101).valid?


class Store < ActiveRecord::Base
  validates_numericality_of :annual_revenue, greater_than: -1
  validates :name, length: { minimum: 3,
    too_long: "3 characters is the minimum allowed" }  
end

#test code
# puts Store.create(name: "burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true).valid?
# puts Store.create(name: "burnaby", annual_revenue: '5', mens_apparel: true, womens_apparel: true).valid?
# puts Store.create(name: "bu", annual_revenue: 300000, mens_apparel: true, womens_apparel: true).valid?


puts "Enter a store name"
user_store = gets.chomp

store_attempt = Store.create(name: user_store)
puts store_attempt.errors.full_messages

