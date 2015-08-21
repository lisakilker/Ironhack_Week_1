
def my_method
  puts "before proc"
  my_proc = Proc.new do
    puts "inside proc"
    return
  end
  my_proc.call
  puts "after proc"
end

my_method
 # == OUTPUTS
 # 	before proc
 # 	inside proc

# LAMBDA --------------------------------------------

# def my_method
#   puts "before proc"
#   my_proc = lambda do
#     puts "inside proc"
#     return
#   end
#   my_proc.call
#   puts "after proc"
# end

# my_method
	# == OUTPUTS
	# before proc
	# inside proc
	# after proc
