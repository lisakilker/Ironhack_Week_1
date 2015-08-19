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
		menu
	end

	def menu
		puts "Do you want to show the word length (L), reverse (R), uppercase (U), or lowercase (D)?"
		user_word = gets.chomp
		if user_word == "L"
			puts @user_word.length
		elsif user_word == "R"
			puts @user_word.reverse
		elsif user_word == "U"
			puts @user_word.upcase
		elsif user_word == "D"
			puts @user_word.downcase
		else 
			puts "That is not an option."
		end
	end
end

my_decoder = Authenticate.new
my_decoder.ask_user
