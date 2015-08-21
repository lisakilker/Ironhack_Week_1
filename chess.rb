class Board
	 def initialize
	 	@@array = Board.new[0,0]
	 	@@grid = Array.new(x) {Array.new(y)}
	end
end

class Piece
	def initialize_move(chessboard, origin, destination)
		@chessboard = chessboard
	 	@origin = origin
	 	@destination = destination
	 end
 end

class Pawn < Piece # moves up 1 square or 2 if both are vacant
	def available_moves(x, y)
		available_moves = IO.readlines("simple_moves.txt")
		if 
			puts "LEGAL"
		else 
			puts "ILLEGAL"
		end
	end
end

class Knight < Piece # moves L shaped
	def available_moves(x, y)
		available_moves = IO.readlines("simple_moves.txt")
		if 
			puts "LEGAL"
		else 
			puts "ILLEGAL"
		end
	end
end

class Bishop < Piece # moves any number of vacant squares diagonally
	def available_moves(x, y)
		available_moves = IO.readlines("simple_moves.txt")
		if 
			puts "LEGAL"
		else 
			puts "ILLEGAL"
		end
	end
end

class Rook < Piece  # moves any number of vacant squares horizonally or vertically
	def available_moves(x, y)
		available_moves = IO.readlines("simple_moves.txt")
		if 
			puts "LEGAL"
		else 
			puts "ILLEGAL"
		end
	end
end
		 	
class Queen < Piece  # moves any number of vacant squares horizonally, vertically, or diagnoally
	def available_moves(x, y)
		available_moves = IO.readlines("simple_moves.txt")
		if 
			puts "LEGAL"
		else 
			puts "ILLEGAL"
		end
	end
end

class King < Piece # any one square any direction
	def available_moves(x, y)
		available_moves = IO.readlines("simple_moves.txt")
		if 
			puts "LEGAL"
		else 
			puts "ILLEGAL"
		end
	end
end

class ChessValidator
	def valid_move?
		
		move [a, 1] to [a, 2]  #is move legal?
		end

	def array_of_moves
		IO.read("simple.txt")each. do { |i| } [a8] to [0,0]
		IO.read ("simple.txt")each. do { |i| } [a1] to [0,7]
	end

	def moves
		Array = array of moves

my_game = Board.new
initalize.Board.new
Board.new = IO.write.foreach("file.txt").map {|line| line.split(' ')}



