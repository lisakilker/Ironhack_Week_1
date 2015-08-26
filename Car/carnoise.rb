class Car
	attr_accessor :noise
	def initialize(noise, engine, wheels) #method
		@noise=noise
		@engine=engine
		@wheels=wheels #variable
	end
	def make_noise
		@noise + @engine.make_noise
	end
	def wheels
		@wheels
	end
end

class Engine
	attr_accessor :noise
	def initialize(noise)
		@noise=noise
	end

	def make_noise
		@noise
	end
end

class WheelCount
	def initialize(array_of_cars)
	end
end

cool_engine = Engine.new("Hmmmmm") #cool_engine is a variable and engine.new is an object
cool_car = Car.new("Brrrrrrr", cool_engine, 4)
hot_engine = Engine.new("Ruuummmm")
hot_car = Car.new("Grrrrrrr", hot_engine, 4)
bad_engine = Engine.new("Thuuuud")
bad_car = Car.new("Boooom", bad_engine, 3)

puts cool_car.make_noise + hot_car.make_noise + bad_car.make_noise
puts cool_car.wheels + hot_car.wheels + bad_car.wheels

array_of_cars = [cool_car, hot_car, bad_car]
WheelCount.new (array_of_cars).count
puts array_of_cars


