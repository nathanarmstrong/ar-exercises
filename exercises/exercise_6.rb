require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store4 = Store.find(4)
@store5 = Store.find(5)
@store6 = Store.find(6)

@store1.employees.create(first_name: "Greg", last_name: "Terpintin", hourly_rate: 17.25).save
@store1.employees.create(first_name: "Steve", last_name: "Stefersberg", hourly_rate: 17.25).save
@store1.employees.create(first_name: "Tim", last_name: "Borger", hourly_rate: 25.25).save

@store2.employees.create(first_name: "Jim", last_name: "Helpert", hourly_rate: 25.25)
@store2.employees.create(first_name: "Pam", last_name: "Helpert", hourly_rate: 20.25)
@store2.employees.create(first_name: "Dwight", last_name: "Shruit", hourly_rate: 25.25)

@store4.employees.create(first_name: "Teddy", last_name: "Rophing", hourly_rate: 20.25)
@store4.employees.create(first_name: "Carl", last_name: "Stin", hourly_rate: 17.25)
@store4.employees.create(first_name: "Marry", last_name: "Sheperd", hourly_rate: 25.25)

@store5.employees.create(first_name: "Scott", last_name: "Gigard", hourly_rate: 28.25)
@store5.employees.create(first_name: "Ralph", last_name: "Wiggem", hourly_rate: 18.25)
@store5.employees.create(first_name: "Nakita", last_name: "Nugget", hourly_rate: 17.25)

@store6.employees.create(first_name: "Ed", last_name: "Smith", hourly_rate: 17.25)
@store6.employees.create(first_name: "Edd", last_name: "Barker", hourly_rate: 23.25)
@store6.employees.create(first_name: "Eddy", last_name: "Tomson", hourly_rate: 15.25)

@who_works_store1 = Employee.where(store_id: 1)
@store1_employees = @who_works_store1.each { |employee| puts "#{employee.first_name}  #{employee.last_name} works at #{@store1.name}"}

@who_works_store2 = Employee.where(store_id: 2)
@store2_employees = @who_works_store2.each { |employee| puts "#{employee.first_name}  #{employee.last_name} works at #{@store2.name}"}

@who_works_store4 = Employee.where(store_id: 4)
@store4_employees = @who_works_store4.each { |employee| puts "#{employee.first_name}  #{employee.last_name} works at #{@store4.name}"}

@who_works_store5 = Employee.where(store_id: 5)
@store5_employees = @who_works_store5.each { |employee| puts "#{employee.first_name}  #{employee.last_name} works at #{@store5.name}"}

@who_works_store6 = Employee.where(store_id: 6)
@store6_employees = @who_works_store6.each { |employee| puts "#{employee.first_name}  #{employee.last_name} works at #{@store6.name}"}