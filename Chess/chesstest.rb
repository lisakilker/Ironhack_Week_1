class Game
def read_array(file)
  int_array = []
  File.open(file, "simple_moves.txt").each_line { |line| int_array << line.split(' ').map {|c| c.to_i} }
  puts int_array
end

my_file = Game.new
my_file.read_array