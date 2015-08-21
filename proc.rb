# Proc objects are blocks of code that have been bound to a set of local 
# variables. Once bound, the code may be called in different contexts and still 
# access those variables.

#EXAMPLES

my_proc = Proc.new do |a|
	puts "This is my proc #{a} was passed to me"
end

my_proc.call(10)
my_proc.(11)
my_proc(12)
my_proc === 13

#OR ------------------------------------------------

hello = Proc.new |a, b, c|
puts "This is my Proc"
end

hello.call 

this will return "This is my Proc" and a, b, and c are nil
because we didnt assign anything, but proc ignores that.

#OR ------------------------------------------------

several = Proc.new { |number| number > 3 && number < 8 }
many = Proc.new { |number| number > 3 && number < 8 }
few = Proc.new { |number| number == 3 }
couple = Proc.new { |number| number == 2 }
none = Proc.new { |number| number == 0 }

0.upto(10) do |number|
	print "#{number} items is "

	case number
	when several
		puts "several"

	when many
		puts "many"

	when few
		puts "few"

	when couple
		puts "couple"

	when none
		puts "none"

	else
		puts "whatever"
	end
end

#OR ------------------------------------------------

def gen_times(factor)
  return Proc.new {|n| n*factor }
end

times3 = gen_times(3)
times5 = gen_times(5)

times3.call(12)               
times5.call(5)                
times3.call(times5.call(4))

#OR ------------------------------------------------

proc {}.arity                  #=>  0
proc { || }.arity              #=>  0
proc { |a| }.arity             #=>  1
proc { |a, b| }.arity          #=>  2
proc { |a, b, c| }.arity       #=>  3
proc { |*a| }.arity            #=> -1
proc { |a, *b| }.arity         #=> -2
proc { |a, *b, c| }.arity      #=> -3
proc { |x:, y:, z:0| }.arity   #=>  1
proc { |*a, x:, y:0| }.arity   #=> -2

proc   { |x=0| }.arity         #=>  0
lambda { |x=0| }.arity         #=> -1
proc   { |x=0, y| }.arity      #=>  1
lambda { |x=0, y| }.arity      #=> -2
proc   { |x=0, y=0| }.arity    #=>  0
lambda { |x=0, y=0| }.arity    #=> -1
proc   { |x, y=0| }.arity      #=>  1
lambda { |x, y=0| }.arity      #=> -2
proc   { |(x, y), z=0| }.arity #=>  1
lambda { |(x, y), z=0| }.arity #=> -2
proc   { |a, x:0, y:0| }.arity #=>  1
lambda { |a, x:0, y:0| }.arity #=> -2


