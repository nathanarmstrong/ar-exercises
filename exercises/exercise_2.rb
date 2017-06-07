require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Store.find(1)
@store1.name = "Grabs"
@store2 = Store.find(2)



puts "#{@store1.name} has a new name, unlike #{@store2.name}"