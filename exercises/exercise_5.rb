require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

total_revenue = Store.sum("annual_revenue")
puts "Total: #{total_revenue}"
average_revenue = Store.average("annual_revenue")
puts "Average: #{average_revenue}"

one_million_plus = Store.where(total_revenue.size > 1000000);
puts "One million: #{one_million_plus.size}"
