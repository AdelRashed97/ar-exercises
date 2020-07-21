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
@store1.employees.create(first_name: "Jack", last_name: "Peralta", hourly_rate: 75)
@store1.employees.create(first_name: "Amy", last_name: "Santiago", hourly_rate: 50)
@store1.employees.create(first_name: "Rosa", last_name: "Diaz", hourly_rate: 55)

@store2.employees.create(first_name: "Gina", last_name: "Lenneti", hourly_rate: 60)
@store2.employees.create(first_name: "Raymond", last_name: "Holt", hourly_rate: 75)
@store2.employees.create(first_name: "Charlie", last_name: "Boyle", hourly_rate: 55)