require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name:"Surrey", annual_revenue:224000,  mens_apparel:false, womens_apparel:true)
Store.create(name:"Whistler", annual_revenue: 1900000 , mens_apparel:true, womens_apparel:false)
Store.create(name:"Yaletown", annual_revenue: 430000,  mens_apparel:true, womens_apparel:true)

@menstores= Store.where(mens_apparel:true)
@womenstores= Store.where(womens_apparel:true)


puts "Stores that sell men's apparel"
@menstores.each do |store|
  puts "Store name : #{store.name}"
  puts "Annual Revenue: #{store.annual_revenue}"
  puts "---------------------------------------------"
end


puts "Stores that sell womens's apparel"
@womenstores.each do |store|
  puts "Store name : #{store.name}"
  puts "Annual Revenue: #{store.annual_revenue}"
  puts "---------------------------------------------"
end