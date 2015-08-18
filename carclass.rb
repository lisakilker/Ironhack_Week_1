class Car
	attr_accessor :noise
	def initialize (noise)
		@noise=noise
	end
	def start
		Engine.new.move_pistons
	end
end

class Engine
	attr_accessor :noise
	def initialize (noise)
		@noise=noise
	end
	def move_pistons
		"Pshhhhhh"
	end
end

cool_car = Car.new("Grrrrrrr")
cool_engine = Engine.new("Hmmmmm")
puts cool_car.noise + cool_engine.noise



