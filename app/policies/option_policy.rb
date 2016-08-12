class OptionPolicy < ApplicationPolicy
	attr_reader :user, :option

	def initialize(user, option)
		@user = user
		@option = option 
	end 

	def update? 
		user.admin? 
	end 
end 