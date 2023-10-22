require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
company_revenue = Store.sum("annual_revenue")
puts company_revenue

average_revenue = company_revenue / Store.count(:all)
puts average_revenue

big_stores_count = Store.where('annual_revenue > ?', 1000000).count
puts big_stores_count