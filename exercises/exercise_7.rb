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
class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than: 40, less_than: 200 }
  belongs_to :store
end


class Store
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0, only_integer: true}
end

print "Please enter the store name: "
store_name = gets.chomp

new_store = Store.new(name: store_name)

if new_store.save
  puts "Store '#{new_store.name}' has been created with ID: #{new_store.id}"
else
  puts "Failed to create the store. Errors:"
  new_store.errors.full_messages.each do |error_message|
    puts error_message
  end
end