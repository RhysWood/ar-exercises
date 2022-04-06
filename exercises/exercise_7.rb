require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Please input a store name"
store_name = $stdin.gets.chomp.to_s
puts "Attemptting to create a store with #{store_name}"
new_store = Store.create(name: store_name)
pp new_store.errors.full_messages
