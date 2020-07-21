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

@mens_stores= Store.where(mens_apparel:true)
@womens_stores= Store.where(womens_apparel:true)
@womens_stores_less_1M = Store.where("womens_apparel = true AND annual_revenue < ?",1000000)


puts "Stores that sell men's apparel"
@mens_stores.each do |store|
  puts "Store name : #{store.name}"
  puts "Annual Revenue: #{store.annual_revenue}"
  puts "---------------------------------------------"
end


puts "Stores that sell womens's apparel"
@womens_stores.each do |store|
  puts "Store name : #{store.name}"
  puts "Annual Revenue: #{store.annual_revenue}"
  puts "---------------------------------------------"
end

puts "Stores that sell womens's apparel and revenue less than 1M"
@womens_stores_less_1M.each do |store|
  puts "Store name : #{store.name}"
  puts "Annual Revenue: #{store.annual_revenue}"
  puts "---------------------------------------------"
end
