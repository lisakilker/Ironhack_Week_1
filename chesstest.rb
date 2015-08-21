# class File
# 	def initialize
# 		data = File.readlines("simple_moves.txt").map do |line| line.split.map(&:to_i)
#   	end
#   	end
# end


# my_file = File.new
# print data

File.readlines("simple_moves.txt").map do |line| line.split.map(&:to_i)
    puts line
end


# # Display lengths of lines with block.
# IO.foreach("simple_moves.txt") {|line| puts line.length}