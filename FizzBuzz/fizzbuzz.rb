class Fiz
	attr_accessor :array
	def initialize
		@array = [*1..100]	
	end

	def run_fizz
		@array.each do |number|
			if number % 3 == 0
		        puts "fizz"
		    elsif number % 5 == 0
		        puts "buzz"
		    elsif number % 7 == 0
		        puts "blue"
		    else 
		    	puts number
		   end
		end
	end
end

my_fizz = Fiz.new
my_fizz.run_fizz
