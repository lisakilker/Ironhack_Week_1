class Room
	attr_accessor :number, :description, :doors
	def initialize(number, description, doors)
		@number = number
		@description = description #attribute or #instance variables
		@doors = doors
		
	end
end

class Game
	def initialize
		@rooms = []
		@current_location = 0
		@commands = ["N", "S", "E", "W"]
	end

	def add_room(room)
		@rooms.push(room)
	end

	def start
		puts "Welcome to my game.  You can move with the following commands: N, S, E, and W."
		@end_game_condition = false
		while @end_game_condition == false do
			user_input = gets.chomp
			process(user_input)
		end
	end

	def process(user_input)
		if @rooms[@current_location].doors == user_input
			puts "You have chosen the unlocked door."
			@current_location += 1
			puts "You are now in a room with #{@rooms[@current_location].description}."
			puts "This is room #{@current_location}.  Where would you like to go?"
		else
			puts "You cannot go that way.  Try again."
		end
	end
end

initial_room = Room.new(0, "Eliav", "E")
north_room = Room.new(1, "A big hungry bear", "N") 
south_room = Room.new(2, "Gideon", "S") 
east_room = Room.new(3, "Moriyah", "E") 
west_room = Room.new(4, "Kanye", "W")

my_game = Game.new

my_game.add_room(initial_room)
my_game.add_room(north_room)
my_game.add_room(south_room)
my_game.add_room(east_room)
my_game.add_room(west_room)

my_game.start


