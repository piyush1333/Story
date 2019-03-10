class StaticPagesController < ActionController::Base

	def home
		@message = "This is a test message"
		@user = User.all
	end

	def login


	end

	def signup

	end

 	def dashboard
	end

	def add_new
	end

end
