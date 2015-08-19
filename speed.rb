class Car
	attr_accessor :speed
	def initialize(speed)
		@speed = speed
	end
end

class Database
	def initalize(car)
		@car = car
		DB.sql("INSERT INTO Cars VALUES #{@car.speed}")
	end
end

red_car = Car.new (120)
Databse.new(my_car)
