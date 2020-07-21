require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum("annual_revenue")
puts "Total Revenue:$ #{total_revenue}"

average_revenue = Store.average("annual_revenue")

puts "Average Revenue per store: $ #{average_revenue}"

stores_over_1M = Store.where(" annual_revenue >= 1000000").count
puts "# of stores with over 1M annual revenue is #{stores_over_1M}"