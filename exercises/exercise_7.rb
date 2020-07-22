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
puts "Input a store name"
store_name = $stdin.gets.chomp
store = Store.create()
if (!store.valid?)
   store.errors.messages.each_pair{|attribute,message| puts "Attribute: #{attribute} \n #{message.join(" ")}"}
  
  
end