require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Billy", last_name: "Woods", hourly_rate: 70)
@store1.employees.create(first_name: "Earl", last_name: "Sweatshirt", hourly_rate: 20)
@store1.employees.create(first_name: "Green", last_name: "Goblin", hourly_rate: 25)
@store2.employees.create(first_name: "Sam", last_name: "Iam", hourly_rate: 45)
@store2.employees.create(first_name: "Beast", last_name: "Boy", hourly_rate: 100)
@store2.employees.create(first_name: "Rand", last_name: "Al-Thor", hourly_rate: 100)
@store2.employees.create(first_name: "Perrin", last_name: "Ibara", hourly_rate: 15)
@store2.employees.create(first_name: "Egwane", last_name: "Al Vere", hourly_rate: 30)