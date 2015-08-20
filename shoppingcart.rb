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
    if date.Date.today
    end
  end
end

class Oranges < Item
  def initialize
      @price = 5
    end
    
  def oranges_discount
    if date.Date.today
    end
  end
end

class Apples < Item
  def initialize
      @price = 10
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
      @total_cost += item.price
    end
    puts "Your total is #{@total_cost}."
  end

  def add_item(item)
      @all_items << item
  end
end

my_cart = Cart.new
grapes = Grapes.new
oranges = Oranges.new
apples = Apples.new

my_cart.add_item(grapes)
my_cart.add_item(oranges)
my_cart.add_item(apples)

my_cart.total
