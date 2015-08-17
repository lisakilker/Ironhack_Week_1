class Car
	def make_noise
		puts @noise
	end
	def initialize(new_noise)
		@noise = new_noise
	end

end

Car.new("Broom").make_noise
Car.new("Brooooom").make_noise

