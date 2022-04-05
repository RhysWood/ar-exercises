require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Rhys", last_name: "Wood", hourly_rate: 25)
@store1.employees.create(first_name: "Chloe", last_name: "Dace", hourly_rate: 25)

@store2.employees.create(first_name: "Ben", last_name: "Selbie", hourly_rate: 15)
@store2.employees.create(first_name: "Luke", last_name: "Bradshaw", hourly_rate: 30)

puts Employee.where(store_id: 1).count
puts Employee.where(store_id: 2).count
