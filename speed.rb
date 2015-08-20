class Car
	attr_accessor :speed
	def initialize(speed)
		@speed = speed
	end
end

class Database
	def save(car)
		DB.sql("INSERT INTO Cars VALUES #{car.speed}")
	end
end

red_car = Car.new (120)
my_db = Database.new
my_db.save(red_car)


