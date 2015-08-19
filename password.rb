class Authenticate

	def ask_user
		puts "What is your username?"
		user_name = gets.chomp
		check_username(user_name)
	end

	def check_username(user_name)
		if user_name == "Lisa"
			puts "Great."
			puts "What is your password?"
			user_password = gets.chomp
			check_password(user_password)	
		else 
			puts "That username is incorrect. Try again."
			ask_user
		end
	
	end

	def check_password(password)
		if password == "donuts"
			puts "You've successfully logged in."
			puts "Now, enter a word."
			word
		else 
			puts "That password is incorrect.  Try again."
		end
	end

	def word
		@user_word = gets.chomp
		puts @user_word.split.count
		menu
	end

	def menu(length, reverse, upcase, downcase)
		puts "To give the length of the word, enter the word length."
		user_length = gets.chomp
		if user_length = "length"
			puts @user_word.length
		count

			
	def count
		puts @user_word.length
		puts @user_word.reverse
		puts @user_word.upcase
		puts @user_word.downcase
	end
end

my_decoder = Authenticate.new
my_decoder.ask_user
