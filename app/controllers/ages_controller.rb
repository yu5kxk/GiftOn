class AgesController < ApplicationController
	def new
		@age = Age.new
		@ages = Age.all
	end

	def create
		age = Age.new(age_params)
		age.save
		redirect_to new_age_path
	end

	def edit
		@age = Age.find(params[:id])
	end

	def update
		age = Age.find(params[:id])
		age.update(age_params)
		redirect_to new_age_path
	end

	def destroy
		age = Age.find(params[:id])
		age.destroy
		redirect_to new_age_path
	end

	private
	  	def age_params
	    	params.require(:age).permit(:name)
	  	end
end
