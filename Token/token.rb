class User
	attr_accessor :name, :email
	[...]
	def set_token
		@token = Token.new
	end
end
	def is_toke_valid?
		@token.is_valid?
	end
end

class Token
	attr_accessor :expiration_date, :value
	[...]
end
	def is_valid?
	@value && (Date.today < @expiration_date) && (value.length > 120)
end

class Validator
	def initialize (user)
		@user = user
	end
	def make_sure_its_valid
		@user.is_token_valid?
	end
end

xavier = User.new
this_validator = Validator.new(xavier)
this_validator.make_sure_its_valid	
