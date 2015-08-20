require "date"
require "pry"

class Item
    attr_accessor :price
    def initialize(price)
      @price = price
    end
  end

class Grapes < Item
  def initialize
    @price = 15
  end

  def grapes_discount
    # if Date.new(today) = Tuesday @price == 3
    # if @quantity +=3 @price == 7
      #buy 4 get 1 orange
    # end
  end
end

class Oranges < Item
  def initialize
      @price = 5
    end
    
  def oranges_discount
    # if Date.new(today) = Tuesday @price == 3
    # if @quantity +=3 @price == 10
      #buy 3 pay for 2
    # end
  end
end

class Apples < Item
  def initialize
      @price = 10
      #buy 2 pay 1
    end
    
  def apples_discount
    if date.Date.today
    end
  end
end

class Cart
  def initialize
      @all_items = []
  end

  def total
      @total_cost = 0
      @all_items.each do |item|
        @total_cost += item[0].price[0]
      end
    puts "Your total is #{@total_cost}."
  end

  def add_item(item, quantity)
      @all_items << [item, quantity]
  end
end

my_cart = Cart.new
grapes = Grapes.new
oranges = Oranges.new
apples = Apples.new

my_cart.add_item(grapes, 6)
my_cart.add_item(oranges, 9)
my_cart.add_item(apples, 4)

my_cart.total
