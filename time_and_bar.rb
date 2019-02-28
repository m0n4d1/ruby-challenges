require 'date'
require 'io/console'
# There are three parts to this challenge and remember to push your solution.

# PART 1:
# - Create a well named variable that contains the amount of time it took you to get to class
# - Create a complete sentence  that lets us know how you got to class and how long it took
# - Print this complete sentence

class Commute
  attr_accessor :start_time, :end_time
  attr_reader :duration

  def initialize(start_time,end_time)
    @start_time = start_time
    @end_time = end_time
    @duration = get_duration(start_time, end_time)
  end
  
  def get_duration(start_time, end_time)
    return Time.at(end_time.to_time.to_i - start_time.to_time.to_i).utc.strftime("%Hh:%Mm:%Ss")
  rescue Exception => e 
    puts e
    return e
  end

end

#travel DateTime details
left_home = DateTime.new(2019,2,28,9,0,0)
entered_classroom = DateTime.new(2019,2,28,9,50,0)

#creates a commute object passing in travel DateTime details
morning_commute = Commute.new(left_home, entered_classroom)

#variable containing the amount of time it took me to get to class
commute_duration = morning_commute.duration

#prints a complete sentence describing how I got to class and how it long it took
# p "Anthony's morning commute to class took #{commute_duration} travelling via public transport(bus)"

# PART 2:
# You are working at a bar where you have a current backlog of drinks to make:
# 3 cocktails
# 2 waters
# and
# 6 beers

# Write a program that asks the customer for their order.
#   if they order a cocktail, add one to the number of cocktails you need to make,
#   if they order a water, add one to the number of waters you need to make,
#   if they order a beer, add one to the number of beers you need to pour

# Print the final drinks order so you know what to make

# Part Three:
# Cocktails sell for $22, and cost $8 to make
# Beer sell for $12, and cost $3 to pour
# Water sell for $6, and cost $0.15 to make

# Print out the total profit for the orders you have

class Order
  attr_accessor :cocktail,:water,:beer,:name
  attr_reader :total
  def initialize(drinks={},name="unnamed order")
    @name = name
    @cocktail = drinks[:cocktail] || 0
    @water = drinks[:water] || 0
    @beer = drinks[:beer] || 0
  end
  def to_s
    return "Order: #{name} \nCocktails: #{@cocktail}\nWaters: #{@water}\nBeers: #{@beer}"
  end
end

def make_order
  cust_order = Order.new
  while true
    puts `clear`
    # invalid_input = false
    print "Welcome to the bar!\nenter a number to make a selection\n\nDrinks Menu -\ncocktail: 1, water: 2, beer: 3\n\nActions -\nview current order: 4, submit order: 5, exit: 6\n\n"
    # print "Current order:","Cocktails: #{cust_order.cocktail}","Waters: #{cust_order.water}","Beers: #{cust_order.beer}",""
    input = gets.strip.chomp
    case input.to_i
    when 1
      puts `clear`, "Edit number of cocktails to order", "current Cocktails: #{cust_order.cocktail}", "(enter a number)"
      num = gets.strip.chomp.to_i.abs
      cust_order.cocktail = num
    when 2
      puts `clear`, "Edit number of waters to order", "current Water: #{cust_order.water}","(enter a number)"
      num = gets.strip.chomp.to_i.abs
      cust_order.water = num
    when 3
      puts `clear`, "Edit number of beers to order", "current Beers: #{cust_order.beer}", "(enter a number)"
      num = gets.strip.chomp.to_i.abs
      cust_order.beer = num
    when 4
      while true
        puts `clear`
        print "Current #{cust_order}\n\npress any key to return home"
        STDIN.getch
        break
        end
      when 5
        break
      when 6, "exit" 
        exit
      else
    end
  end
  return cust_order
end

def total_order(*orders)
  total = Order.new({},"final_drinks_order")
  orders.each do |order|
    total.cocktail += order.cocktail
    total.water += order.water
    total.beer += order.beer
  end
  return total
end

def calc_profit(order)
  return ((order.cocktail * 14) + (order.water * 9) + (order.beer * 5.85).round(2))
end

backlog = Order.new({cocktail: 3, water: 4,  beer: 6}) # 3 cocktails, 2 waters, 6 beers
cust_order = make_order()
final_drinks_order = total_order(backlog,cust_order)

puts `clear`, final_drinks_order, "Total Proft is $#{calc_profit(final_drinks_order)}"
