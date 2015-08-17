require "io/console"
class Car
	attr_accessor :noise
	@@number_of_cars = IO.read("car2.txt").to_i
	def initialize(noise)
		@noise = noise
		@@number_of_cars +=1

		IO.write("car2.txt", @@number_of_cars)
	end

	def make_noise
		puts @noise
	end

	def self.number_of_cars
		puts @@number_of_cars
	end

end
class RacingCar < Car
		def initialize
			@noise = "VROOOOOOOM"
		end
	end

class Person
	attr_reader :name
	attr_accessor :age
	def initialize(name, age)
		@name = name
		@age = age
	end
end

john = Person.new("john", 40)
normal_car = Car.new("Broom")
normal_car.make_noise
noisy_car = Car.new("Brooooooom")
noisy_car.make_noise
loud_car = Car.new("Vroom")
loud_car.make_noise
Car.number_of_cars
racing_car = RacingCar.new
racing_car.make_noise

[normal_car, noisy_car, loud_car].each do |car|
	car.make_noise
end

sounds = ["Broom", "Meek", "Nyan"]
var = sounds.map do |sound| #cars = sounds.map {|sound| Car.new(sound)}
  Car.new(sound)
end

print var

sounds = ["Broom", "Meek", "Nyan"]
dict = sounds.each_with_object({}) do |sound, result|
	result[sound] = Car.new(sound)
end
print dict 

var = [normal_car, noisy_car, loud_car].reduce("") {|sound, car| sound + car.noise}

puts var


