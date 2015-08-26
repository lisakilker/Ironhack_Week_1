class Board
	 def initialize
	 	@array = Board.new[0,0]
	 	@grid = Array.new(x) {Array.new(y)}
	 	File.readlines("simple_moves.txt").map do |line| line.split.map(&:to_i)
		end
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
	def available_moves(wp, bp)
		if 
			puts "LEGAL"
		else 
			puts "ILLEGAL"
		end
	end
end

class Knight < Piece # moves L shaped
	def available_moves(wk, bk)
		if 
			puts "LEGAL"
		else 
			puts "ILLEGAL"
		end
	end
end

class Bishop < Piece # moves any number of vacant squares diagonally
	def available_moves(wb, bb)
		if 
			puts "LEGAL"
		else 
			puts "ILLEGAL"
		end
	end
end

class Rook < Piece  # moves any number of vacant squares horizonally or vertically
	def available_moves(wr, br)
		if 
			puts "LEGAL"
		else 
			puts "ILLEGAL"
		end
	end
end
		 	
class Queen < Piece  # moves any number of vacant squares horizonally, vertically, or diagnoally
	def available_moves
		if 
			puts "LEGAL"
		else 
			puts "ILLEGAL"
		end
	end
end

class King < Piece # any one square any direction
	def available_moves
		if 
			puts "LEGAL"
		else 
			puts "ILLEGAL"
		end
	end
end

class ChessValidator #This should initialize the board
	def valid_move
	end
	def convert_array
		array = []
		convert.array a1 to 0,7
	end
	# def array_of_moves
	# 	IO.readlines("simple_moves.txt")each. do { |i| } [a8] to [0,0] && [a1] to [0,7]
	# 	end
	# end
end

# 	end
# 	def moves
# 		puts.array_of_moves

# my_game = Board.new
# initalize.Board.new


