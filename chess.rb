class Board
	 def initialize(x, y)
	 	@rows = rows
	 	@columns = columns
	 	@@array = Board.new[0,0]
	 	grid = Array.new(x) {Array.new(y)}
	 end
end

class Piece
	def initialize_move(chessboard, origin, destination)
		@chessboard = chessboard
	 	@origin = origin
	 	@destination = destination
	 	@@moves = IO.readlines("complex_moves.txt")
	 end
 end

class Pawn < Piece # moves up 1 square or 2 if both are vacant
	def available_moves(x, y)
		horz_left x, y
		horz_right x, y
		vert_up x, y
		vert_down x, y
		moves
	end
end

class Knight < Piece # moves L shaped
	def available_moves(x, y)
		horz_left x, y
		horz_right x, y
		vert_up x, y
		vert_down x, y
		moves
	end
end

class Bishop < Piece # moves any number of vacant squares diagonally
	def available_moves(x, y)
		horz_left x, y
		horz_right x, y
		vert_up x, y
		vert_down x, y
		moves
	end
end

class Rook < Piece  # moves any number of vacant squares horizonally or vertically
	def available_moves(x, y)
		horz_left x, y
		horz_right x, y
		vert_up x, y
		vert_down x, y
		moves
	end
end
		 	
class Queen < Piece
	def available_moves(x, y)
	    horz_left @x, @y
	    horz_right @x, @y
	    vert_up @x, @y
	    vert_down @x, @y
	    moves # moves any number of vacant squares horizonally, vertically, or diagnoally
		# def is_move_diagonal?	
		# 	if @origin = @destination = 
		# end
	end
end

class King < Piece
	def available_moves(x, y)
	    horz_left @x, @y
	    horz_right @x, @y
	    vert_up @x, @y
	    vert_down @x, @y
	    moves
	end
end



# # class ChessValidator
# # 	initalize.Board.new #initializes board
# # 	converts [a, 1] to [0, 7]
# # 	def valid_move?
# # 		move [a, 1] to [a, 2]  #is move legal?
# # 	end
# # 	def array_of_moves
# # 		#is legal?
# # 		def moves
# # 			Array = #array of moves


# # # #duplicated Rook and Queen class logic
# # # 	#rook and queen should inherit from piece
