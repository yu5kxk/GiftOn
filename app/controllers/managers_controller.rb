class ManagersController < ApplicationController
	before_action :authenticate_manager!, only:[:menu]
	def menu
	end
end
