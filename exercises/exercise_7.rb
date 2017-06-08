require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"


pp "enter a name"
@input_name = $stdin.gets.chomp

pp "enter a revenue"
@input_revenue = $stdin.gets.chomp

pp "do you sell mens clothes"
@input_man = $stdin.gets.chomp
@upcase_man = @input_man.upcase!
if @upcase_man === "YES"
    @sell_man = true
else
    @sell_man = false
end

pp "do you sell womens clothes"
@input_woman = $stdin.gets.chomp
@upcase_woman = @input_woman.upcase!
if @upcase_woman === "YES"
    @sell_woman = true
else
    @sell_woman = false
end

@new_store = Store.create(name: @input_name, annual_revenue: @input_revenue, mens_apparel: @sell_man, womens_apparel: @sell_woman)
pp "#{Store.count}"

@created_store = Store.last.name

pp "#{@created_store} is the newest store"
@new_store.valid?
@new_store.errors.messages.each {|message| pp message}










