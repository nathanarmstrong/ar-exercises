require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"


@all_stores = Store.count
@total_revanue = Store.sum(:annual_revenue)



pp "all #{@all_stores} stores pull in a total revanue of #{@total_revanue}"