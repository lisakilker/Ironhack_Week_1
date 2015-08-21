class Board
 	def initialize(rows, columns)
 		@rows = rows
 		@columns = columns
 		@@array = Board.new[0,0]
 		grid = Array.new(rows) { Array.new(columns) }
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

class Pawn # moves up 1 square or 2 if both are vacant
end

class Knight # moves L shaped
end

class Bishop # moves any number of vacant squares diagonally
end

class Rook # moves any number of vacant squares horizonally or vertically
 	# def is_move_valid
 	# 	if @origin = @destination = 
 end


class Queen # moves any number of vacant squares horizonally, vertically, or diagnoally
	# def is_move_diagonal?	
	# 	if @origin = @destination = 
	# end
end

class King
end

class ChessValidator
	Board.new #initializes board
	converts [a, 1] to [0, 7]
	def valid_move?
		move [a, 1] to [a, 2]  #is move legal?
	end
	def array_of_moves
		#is legal?
		def moves
			Array = #array of moves


# # #duplicated Rook and Queen class logic
# # 	#rook and queen should inherit from piece
