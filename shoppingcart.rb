require 'pry'
require 'date'

class Item
    attr_accessor :price
    def initialize(price)
      @price = price
    end
  end

class Apples < Item
  def discount
    today = Date.today.strftime("%A")
    if today == "Saturday" || "Sunday"
      @price -= @price/10
    end
  end
end

class Oranges < Item
end

class Grapes < Item
end

class Bananas < Item
end

class Watermelon < Item
end

class Vacuum < Item
  def discount
      @price -= @price/10 if @price > 100
  end
end

class Cart

  def initialize
      @all_items = []
  end

  def total
      @total_cost = 0
      @all_items.each do |item|
      @total_cost += item.price
    end
    puts "Your total is #{@total_cost}."
  end

  def add_item(item, quantity)
    @item = item
    @quantity = quantity
    @quantity.times {@all_items << @item}
  end

  def discount
    @total_cost -= @total_cost/20 if @all_items.length > 5 
    puts "Your total cost with discount applied is #{@total_cost}"
  end

end

my_cart = Cart.new
oranges = Oranges.new(2)
bananas = Bananas.new(3)

oranges.price
bananas.price
bananas.discount
vacuum = Vacuum.new(150)
vacuum.discount

my_cart.add_item(oranges, 1)
my_cart.add_item(bananas, 3)
my_cart.total
my_cart.discount