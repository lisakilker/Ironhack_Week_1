class Board
	 def initialize(x, y)
	 	@rows = rows
	 	@columns = columns
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
		IO.readlines("simple_moves.txt")
	end
end

class Knight < Piece # moves L shaped
	def available_moves(x, y)
		IO.readlines("simple_moves.txt")
	end
end

class Bishop < Piece # moves any number of vacant squares diagonally
	def available_moves(x, y)
		IO.readlines("simple_moves.txt")
	end
end

class Rook < Piece  # moves any number of vacant squares horizonally or vertically
	def available_moves(x, y)
		IO.readlines("simple_moves.txt")
	end
end
		 	
class Queen < Piece  # moves any number of vacant squares horizonally, vertically, or diagnoally
	def available_moves(x, y)
		IO.readlines("simple_moves.txt")
	end
end

class King < Piece # any one square any direction
	def available_moves(x, y)
		IO.readlines("simple_moves.txt")
	end
end

class ChessValidator
# 		converts [a, 1] to [0, 7]
# 	def valid_move?
# 		move [a, 1] to [a, 2]  #is move legal?
	end
# 	def array_of_moves
# 		#is legal?
# 		def moves
# 			Array = #array of moves

# my_game = Board.new
# initalize.Board.new

# # # #duplicated Rook and Queen class logic
# # # 	#rook and queen should inherit from piece
