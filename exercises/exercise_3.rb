require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"



@store3 = Store.find(3).destroy



@new_number_stores = Store.count
puts "#{@store3.name} has burned down"
puts "There are #{@new_number_stores} stores in the DB now"